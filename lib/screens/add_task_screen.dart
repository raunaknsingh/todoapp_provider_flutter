import 'package:flutter/material.dart';
import '../model/task.dart';
import '../provider/task_provider.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  String taskname = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  taskname = newText;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: TextButton(
                onPressed: () {
                  if (taskname.isNotEmpty) {
                    Provider.of<TaskProvider>(context, listen: false)
                        .addTask(Task(name: taskname));
                    Navigator.pop(context);
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
