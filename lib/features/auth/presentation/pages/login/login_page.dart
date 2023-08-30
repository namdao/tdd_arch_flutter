// import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/config/routes/auth_guard.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

@RoutePage(name: 'LoginScreens')
class LoginPages extends StatelessWidget {
  const LoginPages({super.key, this.onLoginResult});
  final void Function()? onLoginResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Screen')),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.router.navigateNamed('/auth/register');
                },
                child: const Text('Register')),
            TextButton(
                onPressed: () {
                  context.read<AuthProviderApp>().login();
                  // context
                  //     .read<AuthenticationRepository>()
                  //     .logIn('phoneNumber', 'otp');
                  context.router.replaceAll([const HomeScreen()]);
                },
                child: const Text('Login'))
          ],
        ));
  }
}
