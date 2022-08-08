class Task {
  Task({required this.title, required this.taskDate});

  Task.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        taskDate = DateTime.parse(json['dateTime']);

  String title;
  DateTime taskDate;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dateTime': taskDate.toIso8601String(),
    };
  }
}
