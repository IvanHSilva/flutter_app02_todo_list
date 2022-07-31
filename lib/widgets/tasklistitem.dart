import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../models/task.dart';
// flutter pub add flutter_slidable

class TaskListItem extends StatelessWidget {
  const TaskListItem({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(1),
      startActionPane: const ActionPane(
        motion: ScrollMotion(),
        // dismissible: DismissiblePane(
        //   onDismissed: () {},
        // ),
        children: [
          SlidableAction(
            onPressed: null,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Excluir',
          ),
        ],
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 2,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Excluir',
            onPressed: null,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              DateFormat('dd/MM/yyyy - HH:mm').format(task.taskDate),
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              task.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
