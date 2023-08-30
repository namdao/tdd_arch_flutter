import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';
import 'package:provider/provider.dart';

@RoutePage(name: 'RegisterScreens')
class RegisterPages extends StatelessWidget {
  const RegisterPages({super.key});
  Widget buttonLogin(BuildContext context) {
    return Center(
        child: Column(
      children: [
        TextButton(
            onPressed: () {
              context.read<AuthProviderApp>().login();
              context.router.replaceAll([const HomeScreen()]);
            },
            child: const Text('register'))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Register Screen')),
        body: buttonLogin(context));
  }
}
