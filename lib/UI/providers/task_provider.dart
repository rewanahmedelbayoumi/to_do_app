import 'package:flutter/material.dart';

class Task {
  String title;
  TimeOfDay time;
  bool isDone;

  Task({
    required this.title,
    required this.time,
    this.isDone = false,
  });
}

class TaskProvider extends ChangeNotifier {
  final List<Task> tasks = [];

  void addTask({
    required String title,
    required TimeOfDay time,
  }) {
    tasks.add(
      Task(
        title: title,
        time: time,
      ),
    );

    notifyListeners();
  }

  void toggleTask(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void editTask({
    required int index,
    required String title,
    required TimeOfDay time,
  }) {
    tasks[index].title = title;
    tasks[index].time = time;

    notifyListeners();
  }
}