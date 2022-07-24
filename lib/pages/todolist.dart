import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  ToDoList({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'E-Mail',
                  hintText: 'email@email.com',
                  border: OutlineInputBorder(),
                  //prefixText: 'R\$ ',
                  //suffixText: ' cm',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  errorText: null,
                ),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: login,
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String email = emailController.text;
    print(email);
    emailController.clear();
  }

  // Somente leitura, a cada letra digitada
  void onChanged(String text) {
    //print(text);
  }

  // Somente quando é pressionado o botão
  void onSubmitted(String text) {
    print(text);
  }
}
