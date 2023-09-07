import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tdd_architecture_course/features/todo/data/model/todo_model.dart';
import 'package:tdd_architecture_course/features/todo/data/repository/todo_repository.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  final TodoRepo todoRepo = TodoRepo();
  TodoBloc() : super(TodoInitial()) {
    on<TodoFetch>((event, emit) async {
      final List<TodoModel> listFetchTask = state.task;
      todoRepo.listTask = listFetchTask;
      emit(TodoStateLoaded(listFetchTask));
      // emit(TodoStateLoaded(todoRepo.tasks));
    });
    on<TodoAdd>((event, emit) async {
      emit(TodoStateLoaded(todoRepo.addTodo(event.task)));
    });
    on<TodoRemove>((event, emit) async {
      emit(TodoStateLoaded(todoRepo.removeTodo(event.id)));
    });
    on<TodoUpdate>((event, emit) async {
      emit(TodoStateLoaded(todoRepo.updateTask(event.id, event.status)));
    });
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && (json['data'] as List<dynamic>).isNotEmpty) {
      return TodoStateLoaded((json['data'] as List<dynamic>)
          .map((e) => TodoModel.fromJson(e))
          .toList());
    }
  }

  @override
  Map<String, dynamic>? toJson(TodoState state) {
    if (state is TodoStateLoaded) {
      return {'data': state.task.map((e) => e.toJson()).toList()};
    }
    return {'data': []};
  }
}
