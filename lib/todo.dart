class Todo {
  String get status => isDone ? 'выполнено' : 'в процессе';
  int id;
  String title;
  bool isDone;
  static int _counter = 0;
  Todo({required this.title})
  : id = ++_counter,
    isDone = false;
  @override
  String toString() {
  // String status = isDone ? '[x]' : '[ ]';
  // return '$status $id. $title';
  String mark = isDone ? "[x]" : '[ ]';
  return '$mark $id. $title ($status)';
  }
  void complete() {
    isDone = true;
}
}
// Todo(int id, String title) {
//   this.id = id;
//   this.title = title;
//   this.isDone = false;
// }
