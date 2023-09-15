import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';

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
  bool hasDoneAnimate = false;
  late final AppRoute _appRouter;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 200, end: 300).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _appRouter =
              AppRoute(authenticationBloc: Provider.of(context, listen: false));
          setState(() {
            hasDoneAnimate = true;
          });
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
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      if (!hasDoneAnimate) {
        return Container(
          color: Colors.white,
          child: AnimatedLogo(animation: animation),
        );
      }

      return MaterialApp.router(
        title: 'Clean Architect Flutter',
        routerConfig: _appRouter.config(
          reevaluateListenable: ReevaluateListenable.stream(
              context.read<AuthenticationBloc>().stream),
        ),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
