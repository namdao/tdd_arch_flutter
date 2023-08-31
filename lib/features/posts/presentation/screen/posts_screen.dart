import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/posts/presentation/bloc/bloc/posts_bloc.dart';
import 'package:tdd_architecture_course/features/posts/presentation/screen/posts_list.dart';
import 'package:http/http.dart' as http;

@RoutePage(name: 'PostPage')
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostsBloc(httpClient: http.Client())..add(PostFetched()),
      child: Scaffold(
        appBar: AppBar(title: const Text('List post infinity')),
        body: const PostsList(),
      ),
    );
  }
}
