import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/counter/presentation/bloc/counter_bloc.dart';
import 'package:tdd_architecture_course/features/counter/presentation/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('counter page')),
      body: Center(child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Text('${state}', style: const TextStyle(fontSize: 12.0));
        },
      )),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: Hero(tag: 'tag1', child: Container()),
              key: const Key('counterView_increment_floatingActionButton'),
              // onPressed: () => context.read<CounterCubit>().increment(),
              onPressed: () =>
                  context.read<CounterBloc>().add(CounterIncrementPressed()),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: Hero(tag: 'tag2', child: Container()),
              key: const Key('counterView_decrement_floatingActionButton'),
              // onPressed: () => context.read<CounterCubit>().decrement(),
              onPressed: () =>
                  context.read<CounterBloc>().add(CounterDecrementPressed()),
              child: const Icon(Icons.remove),
            )
          ]),
    );
  }
}
