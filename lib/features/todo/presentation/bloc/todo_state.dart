part of 'todo_bloc.dart';

sealed class TodoState {
  List<TodoModel> get task => [];
}

final class TodoInitial extends TodoState {}

final class TodoStateLoaded extends TodoState {
  @override
  final List<TodoModel> task;

  TodoStateLoaded(this.task);
}
