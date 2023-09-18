import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
// import 'package:tdd_architecture_course/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:tdd_architecture_course/features/todo/data/model/todo_model.dart';
import 'package:tdd_architecture_course/features/todo/data/repository/todo_repository.dart';
// import 'dart:async';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  final TodoRepo todoRepo = TodoRepo();

  /// Chỉ sử dụng listen change khi và chỉ khi
  /// Muốn lắng nghe sự thay đổi từ 1 bloc khác và thực hiện action ở bloc hiện tại với điều kiện dùng hydrated bloc
  /// hoặc đang push màn hình mới và bloc vẫn còn ở màn hình hiện tại
  /// (có thể dùng cách khác: xem file app_routes class TodoBlocPage )
  /// Vì nếu chỉ dùng Bloc thì khi unmount bloc đã mất.
  /// Đây là cách không tốt vì nó bị ràng buộc bloc - bloc chặt chẽ. Chỉ sử dụng khi source đã tồn tại lâu không còn cách khác
  /// https://bloclibrary.dev/#/architecture?id=bloc-to-bloc-communication
  // final AuthenticationBloc authenticationBloc;
  // late StreamSubscription subscription;
  // TodoBloc({required this.authenticationBloc}) : super(TodoInitial()) {
  //   subscription = authenticationBloc.stream.listen((state) {
  //     if (state.status == AuthenticationStatus.unauthenticated) {
  //       todoRepo.listTask = [];
  //     }
  //   });
  TodoBloc() : super(TodoInitial()) {
    on<TodoFetch>((event, emit) async {
      final List<TodoModel> listFetchTask = state.task;
      todoRepo.listTask = listFetchTask;
      emit(TodoStateLoaded(listFetchTask));
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
