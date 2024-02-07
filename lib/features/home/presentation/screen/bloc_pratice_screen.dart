import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_screen.dart';

@RoutePage(name: 'BlocPraticePage')
class BlocPraticeScreen extends StatelessWidget {
  const BlocPraticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                const Text('Pratice Bloc provider with clean architechture')),
        body: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            TextButton(
                onPressed: () {
                  // final authenBloc =
                  //     Provider.of<AuthenticationBloc>(context, listen: false);
                  // context.watch<AuthenticationBloc>();
                  context.router.navigate(const TodoBlocRoute());
                  // context.router.root.navigate(const CounterPage());
                },
                child: const Text('Todo app')),
            TextButton(
                onPressed: () {
                  // context.router.navigateNamed('counter');
                  context.router.push(const CounterPage());
                },
                child: const Text('Counter')),
            TextButton(
                onPressed: () {
                  context.navigateNamedTo('bloc/timer');
                },
                child: const Text('Timer')),
            TextButton(
                onPressed: () {
                  context.navigateNamedTo('bloc/postsList');
                },
                child: const Text('List')),
            TextButton(
                onPressed: () {
                  context.navigateNamedTo('bloc/opacityAnimated');
                },
                child: const Text('Opacity animated')),
            TextButton(
                onPressed: () {
                  context.router.navigateNamed('/pratice-widget/bottom-tab');
                },
                child: const Text('Some bottom tab bar animated')),
            TextButton(
                onPressed: () {
                  context.router.navigateNamed('/pratice-widget/pageview');
                },
                child: const Text('PageView')),
            TextButton(
                onPressed: () {
                  context.router
                      .navigateNamed('/pratice-widget/sliverListGrid');
                },
                child: const Text('sliverListGrid')),
            TextButton(
                onPressed: () {
                  context.router.navigateNamed('/pratice-widget/transform');
                },
                child: const Text('Transform')),
            TextButton(
                onPressed: () {
                  context.router
                      .navigateNamed('/pratice-widget/challenge/pageview');
                },
                child: const Text('Challenge animate pageview')),
            TextButton(
                onPressed: () {
                  context.router
                      .navigateNamed('/pratice-widget/challenge/sytravel');
                },
                child: const Text('Challenge SY Travel')),
          ]),
        )));
  }
}
