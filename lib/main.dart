import 'package:flutter/material.dart';
import 'package:todoapp/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'provider/task_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
