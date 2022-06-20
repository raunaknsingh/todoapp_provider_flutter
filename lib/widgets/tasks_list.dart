import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';
import 'package:todoapp/model/task.dart';
import 'package:provider/provider.dart';
import '../provider/task_provider.dart';
import '../provider/task_provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isCheckedState: taskData.tasks[index].isDone,
                checkboxCallback: (newState) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                onDeleteTask: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
