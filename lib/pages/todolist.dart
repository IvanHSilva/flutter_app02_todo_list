import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final TextEditingController taskController = TextEditingController();

  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Row tem largura infinita
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        tasks.add(task);
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
                    for (String task in tasks)
                      ListTile(
                        title: Text(task),
                        onTap: () {
                          print(task);
                        },
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: Text('0 tarefas pendentes'),
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
    );
  }
}
