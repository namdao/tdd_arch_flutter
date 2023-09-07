import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

@RoutePage(name: 'SplashScreen')
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _LogoAppState();
}

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({super.key, required Animation<double> animation})
      : super(listenable: animation);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}

class _LogoAppState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<double>(begin: 100, end: 300).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          final state = BlocProvider.of<AuthenticationBloc>(context).state;
          switch (state.status) {
            case AuthenticationStatus.unauthenticated:
            case AuthenticationStatus.unknown:
              AutoRouter.of(context)
                  .pushAndPopUntil(LoginScreens(), predicate: (_) => true);
            case AuthenticationStatus.authenticated:
              AutoRouter.of(context)
                  .pushAndPopUntil(const HomeScreen(), predicate: (_) => true);
          }
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.unauthenticated:
          case AuthenticationStatus.unknown:
            AutoRouter.of(context)
                .pushAndPopUntil(LoginScreens(), predicate: (_) => true);
          case AuthenticationStatus.authenticated:
            AutoRouter.of(context)
                .pushAndPopUntil(const HomeScreen(), predicate: (_) => true);
        }
      },
      child: Container(
        color: Colors.white,
        child: AnimatedLogo(animation: animation),
      ),
    );
  }
}
