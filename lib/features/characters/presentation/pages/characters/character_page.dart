import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';

@RoutePage(name: 'CharacterScreens')
class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  _onGoBack(BuildContext context) {
    context.router.pop();
    // context.router.back();
  }

  _onPage1(BuildContext context) {
    context.router.navigateNamed('/page1');
  }

  _onNavigateChild(BuildContext context) {
    context.router.navigateNamed('/bottomTabs/child');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: Container(
          color: Colors.pink,
          child: Column(
            children: [
              TextButton(
                  onPressed: () => {
                        context.read<AuthProviderApp>().logout(),
                        // Provider.of<AuthProviderApp>(context, listen: false)
                        //     .logout(),
                      },
                  child: const Text('logout')),
              // Consumer<AuthProviderApp>(
              //     builder: (context, authProvider, child) {
              //   return TextButton(
              //       onPressed: () {
              //         // context.read<AuthProviderApp>().login();
              //         // authProvider.login();
              //       },
              //       child: const Text('login'));
              // }),
              TextButton(
                  onPressed: () => _onNavigateChild(context),
                  child: const Text('go child detail'))
            ],
          ),
        )));
  }
}
