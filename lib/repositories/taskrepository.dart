import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

const taskListKey = 'tasklist';

class TaskRepository {
  late SharedPreferences sharedPreferences;

  Future<List<Task>> getTaskList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonStr = sharedPreferences.getString(taskListKey) ?? '[]';
    final List jsonDecode = json.decode(jsonStr) as List;
    return jsonDecode.map((e) => Task.fromJson(e)).toList();
  }

  void saveTaskList(List<Task> tasks) {
    final String jsonStr = json.encode(tasks);
    sharedPreferences.setString(taskListKey, jsonStr);
    //print(jsonStr);
  }
}
