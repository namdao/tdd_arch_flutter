import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

@RoutePage(name: 'SettingPage')
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  _onLogout(BuildContext context) {
    // context.router.pop();
    BlocProvider.of<AuthenticationBloc>(context)
        .add(AuthenticationLogoutRequest());
    // context.router.back();
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
                  onPressed: () => _onLogout(context),
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
            ],
          ),
        )));
  }
}
