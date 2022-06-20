import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../model/task.dart';
import 'dart:collection';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    // Task(name: 'Buy milk'),
    // Task(name: 'Buy bread'),
    // Task(name: 'Buy sugar'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
