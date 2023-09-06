part of 'todo_bloc.dart';

sealed class TodoState {}

final class TodoInitial extends TodoState {}

final class TodoStateLoaded extends TodoState {
  final List<TodoModel> task;

  TodoStateLoaded(this.task);
}
