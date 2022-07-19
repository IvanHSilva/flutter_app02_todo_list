import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
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
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
