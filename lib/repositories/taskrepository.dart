import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/task.dart';

class TaskRepository {
  TaskRepository() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);
  }

  late SharedPreferences sharedPreferences;

  void saveTaskList(List<Task> tasks) {
    final String jsonStr = json.encode(tasks);
    sharedPreferences.setString('tasklist', jsonStr);
    //print(jsonStr);
  }
}
