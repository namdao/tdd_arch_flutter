import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/features/posts/data/models/post.dart';

class PostsListItem extends StatelessWidget {
  final Post post;

  const PostsListItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text(
          '${post.id}',
          style: textTheme.bodySmall,
        ),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
