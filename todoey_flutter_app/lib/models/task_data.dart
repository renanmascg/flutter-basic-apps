import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Abrir a porta'),
    Task(name: 'brincar com o cachorro'),
  ];

  int get taskCount {
    return tasks.length;
  }

}