import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:tdd_architecture_course/features/todo/presentation/screen/todo_add_screen.dart';
import 'package:tdd_architecture_course/features/todo/presentation/widget/task_view_builder.dart';

@RoutePage(name: 'TodoPages')
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo Screen Example"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      content: TodoAddScreen(),
                    ));
          },
          child: const Icon(Icons.add),
        ),
        body: bodyWidget());
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
