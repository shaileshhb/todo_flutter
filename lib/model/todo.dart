class ToDo {
  String? id;
  String? task;
  bool isCompleted;

  ToDo({
    required this.id,
    required this.task,
    this.isCompleted = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: "1", task: "Task 1", isCompleted: true),
      ToDo(id: "2", task: "Task 2", isCompleted: true),
      ToDo(id: "3", task: "Task 3"),
      ToDo(id: "4", task: "Task 4"),
      ToDo(id: "5", task: "Task 5"),
      ToDo(id: "6", task: "Task 6"),
    ];
  }
}
