class TodoModel {
  final int id;
  final String title;
  final bool isCompleted;
  final String description;

  TodoModel(this.id, this.title, this.isCompleted, this.description);

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
        json['id'], json['title'], json['is_completed'], json['description']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'is_completed': isCompleted,
      'description': description
    };
  }

  TodoModel copyWith({
    int? id,
    String? title,
    bool? isCompleted,
    String? description,
  }) {
    return TodoModel(id ?? this.id, title ?? this.title,
        isCompleted ?? this.isCompleted, description ?? this.description);
  }
}
