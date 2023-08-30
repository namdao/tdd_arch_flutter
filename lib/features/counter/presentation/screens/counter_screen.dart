import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/counter/presentation/bloc/counter_bloc.dart';
// import 'package:tdd_architecture_course/features/counter/presentation/cubit/counter_cubit.dart';
import 'package:tdd_architecture_course/features/counter/presentation/screens/counter_view.dart';

@RoutePage(name: 'CounterPage')
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //     create: (_) => CounterCubit(), child: const CounterView());
    return BlocProvider(
        create: (_) => CounterBloc(), child: const CounterView());
  }
}
