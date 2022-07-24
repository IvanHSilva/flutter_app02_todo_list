import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  ToDoList({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Row tem largura infinita
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              // Permte extender o widget com a máxima largura disponível
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adione uma tarefa',
                    hintText: 'Estudar programação',
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
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
        ),
      ),
    );
  }
}
