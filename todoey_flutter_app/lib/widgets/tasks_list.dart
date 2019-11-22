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
            final task = taskData.tasks[index];

            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              }
            );
          },
        );
      },
    );
  }
}