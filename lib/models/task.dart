class Task {
  Task({required this.title, required this.taskDate});

  String title;
  DateTime taskDate;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dateTime': taskDate.toIso8601String(),
    };
  }
}
