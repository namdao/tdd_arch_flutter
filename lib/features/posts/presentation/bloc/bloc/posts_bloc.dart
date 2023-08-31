import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:tdd_architecture_course/features/posts/data/models/post.dart';
import 'package:http/http.dart' as http;
part 'posts_event.dart';
part 'posts_state.dart';

const _postLimit = 20;
const throttleDuration = Duration(milliseconds: 100);
// đây là loại bỏ các event tới trong 100 ms
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc({required this.httpClient}) : super(const PostsState()) {
    on<PostFetched>(_onPostFetched,
        transformer: throttleDroppable(throttleDuration));
  }

  final http.Client httpClient;

  Future<void> _onPostFetched(
      PostsEvent event, Emitter<PostsState> emit) async {
    try {
      if (state.status == PostStatus.initial) {
        final posts = await _fetchPost();
        return emit(state.copyWith(
            status: PostStatus.success, posts: posts, hasReachedMax: false));
      }
      final posts = await _fetchPost(state.posts.length);
      emit(posts.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: PostStatus.success,
              posts: List.from(state.posts)..addAll(posts),
              hasReachedMax: false,
            ));
    } catch (_) {
      emit(state.copyWith(status: PostStatus.failure));
    }
  }

  Future<List<Post>> _fetchPost([int startIndex = 0]) async {
    final response = await httpClient.get(Uri.https(
        'jsonplaceholder.typicode.com', '/posts', <String, String>{
      '_start': startIndex.toString(),
      '_limit': _postLimit.toString()
    }));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List;
      return body.map((dynamic json) {
        final map = json as Map<String, dynamic>;
        return Post(
            id: map['id'] as int,
            title: map['title'] as String,
            body: map['body'] as String);
      }).toList();
    }
    throw Exception('error fetching post');
  }
}
