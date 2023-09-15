import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/config/routes/app_routes.gr.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_add_screen.dart';
import 'package:tdd_architecture_course/features/todo/presentation/widget/task_view_builder.dart';

@RoutePage(name: 'TodoPages')
class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<TodoBloc>(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Todo Screen Example"),
          leading: InkWell(
            onTap: () {
              context.router.popTop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.navigateNamedTo('todoAdd'),
          // onPressed: () => showDialog(
          //   context: context,
          //   builder: (innerContext) {
          //     return BlocProvider.value(
          //       // truyền context TodoBloc vào trong dialog có thể viết 1 trong 2
          //       // value: BlocProvider.of<TodoBloc>(context),
          //       value: context.watch<TodoBloc>(),
          //       child: BlocBuilder<TodoBloc, TodoState>(
          //         builder: (context, state) =>
          //             const AlertDialog(content: TodoAddScreen()),
          //       ),
          //     );
          //   },
          // ),
          child: const Icon(Icons.add),
        ),
        body: bodyWidget(),
      ),
    );
  }

  Widget bodyWidget() {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoStateLoaded) {
          return state.task.isEmpty
              ? const EmptyListWidget()
              : TaskViewBuilder(tasks: state.task);
        }

        return const EmptyListWidget();
      },
    );
  }
}

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No Task has been added",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
