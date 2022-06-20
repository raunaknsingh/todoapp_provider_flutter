import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/task_provider.dart';

class TaskTile extends StatelessWidget {
  final bool isCheckedState;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? onDeleteTask;

  TaskTile(
      {required this.taskTitle,
      required this.isCheckedState,
      this.checkboxCallback,
      this.onDeleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onDeleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheckedState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheckedState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
