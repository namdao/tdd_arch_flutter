import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/posts/presentation/bloc/bloc/posts_bloc.dart';
import 'package:tdd_architecture_course/features/posts/presentation/widgets/bottom_loader.dart';
import 'package:tdd_architecture_course/features/posts/presentation/widgets/post_list_item.dart';

class PostsList extends StatefulWidget {
  const PostsList({super.key});

  @override
  State<PostsList> createState() => _PostState();
}

class _PostState extends State<PostsList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
      switch (state.status) {
        case PostStatus.failure:
          return const Center(
            child: Text("fail"),
          );
        case PostStatus.success:
          if (state.posts.isEmpty) {
            return const Center(child: Text('empty'));
          }
          return ListView.builder(
              controller: _scrollController,
              itemCount: state.hasReachedMax
                  ? state.posts.length
                  : state.posts.length + 1,
              itemBuilder: (BuildContext context, int index) {
                return index >= state.posts.length
                    ? const BottomLoader()
                    : PostsListItem(post: state.posts[index]);
              });
        case PostStatus.initial:
          return const Center(child: CircularProgressIndicator());
      }
    });
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(() {})
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<PostsBloc>().add(PostFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currenScroll = _scrollController.offset;
    return currenScroll >= (maxScroll * 0.9);
  }
}
