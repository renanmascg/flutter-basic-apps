import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/widgets/task_tile.dart';
import 'package:todoey_flutter_app/models/task.dart';

class TasksList extends StatefulWidget {

  List<Task> tasks;

  TasksList({@required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,

      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
        );
      },
    );
  }
}