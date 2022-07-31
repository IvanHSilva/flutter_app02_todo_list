import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/tasklistitem.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final TextEditingController taskController = TextEditingController();

  List<Task> tasks = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          // Row tem largura infinita
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    // Permite extender o widget com a máxima largura disponível
                    Expanded(
                      child: TextField(
                        controller: taskController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adione uma tarefa',
                          hintText: 'Estudar programação',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        String task = taskController.text;
                        setState(() {
                          Task newTask = Task(
                            title: task,
                            taskDate: DateTime.now(),
                          );
                          tasks.add(newTask);
                        });
                        taskController.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        //primary: Colors.green,
                        primary: const Color(0XFF58D8B5),
                        fixedSize: const Size(50, 50),
                        padding: const EdgeInsets.all(16),
                      ),
                      //child: const Text('+'),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (Task task in tasks)
                        TaskListItem(
                          task: task,
                          onDelete: onDelete,
                        ),
                      // ListTile(
                      //   title: Text(task),
                      //   onTap: () {
                      //     print(task);
                      //   },
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text('${tasks.length} tarefas pendentes'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        //primary: Colors.green,
                        primary: Colors.blue,
                        padding: const EdgeInsets.all(15),
                      ),
                      child: const Text('Limpar'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onDelete(Task task) {
    setState(() {
      tasks.remove(task);
    });
  }
}
