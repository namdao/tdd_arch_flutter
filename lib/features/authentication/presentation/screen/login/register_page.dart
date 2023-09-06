import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

@RoutePage(name: 'RegisterScreens')
class RegisterPages extends StatelessWidget {
  const RegisterPages({super.key});
  Widget buttonLogin(BuildContext context) {
    return Center(
        child: Column(
      children: [
        TextButton(
            onPressed: () {
              // context.read<AuthProviderApp>().login();
              // context.router.replaceAll([const HomeScreen()]);
              BlocProvider.of<AuthenticationBloc>(context).add(
                  const AuthenticationStatusChanged(
                      AuthenticationStatus.authenticated));
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
