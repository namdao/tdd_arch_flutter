import 'package:collection/collection.dart';
import 'package:tdd_architecture_course/features/todo/data/model/todo_model.dart';

class TodoRepo {
  List<TodoModel> tasks = [];

  set listTask(List<TodoModel> list) {
    tasks = list;
  }

  List<TodoModel> get listTask => tasks;

  List<TodoModel> addTodo(TodoModel model) {
    tasks.add(model);
    return tasks;
  }

  List<TodoModel> removeTodo(int id) {
    tasks.removeWhere((element) => element.id == id);
    return tasks;
  }

  List<TodoModel> updateTask(int id, bool status) {
    TodoModel? taskModel =
        tasks.firstWhereOrNull((element) => element.id == id);
    if (taskModel != null) {
      tasks = tasks.map((task) {
        if (task.id == id) {
          return task.copyWith(isCompleted: status);
        }
        return task;
      }).toList();
    }
    return tasks;
  }
}
