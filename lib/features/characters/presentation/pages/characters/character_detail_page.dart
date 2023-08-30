import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';

@RoutePage(name: 'CharacterDetailScreens')
class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({super.key});

  _popToRoot(BuildContext context) {
    context.router.popUntilRoot();
  }

  _navigatePage1(BuildContext context) {
    context.router.navigateNamed('/page1');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          TextButton(
              onPressed: () => _popToRoot(context),
              child: const Text('pop to root character')),
          TextButton(
              onPressed: () => _navigatePage1(context),
              child: const Text('navigate to tab page 1'))
        ],
      ),
    );
  }
}
