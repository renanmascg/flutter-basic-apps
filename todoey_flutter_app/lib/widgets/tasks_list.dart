import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter_app/models/task_data.dart';

class TasksList extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (bool checkboxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              }
            );
          },
        );
      },
    );
  }
}