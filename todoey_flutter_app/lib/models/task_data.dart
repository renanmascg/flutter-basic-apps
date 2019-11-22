import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Abrir a porta'),
    Task(name: 'brincar com o cachorro'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

}