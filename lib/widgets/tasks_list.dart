import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            name: taskData.tasks[index].title,
            checkboxState: taskData.tasks[index].isDone,
            checkboxCallback: (value) {
              taskData.updateTask(taskData.tasks[index]);
            },
            checkboxCallback2: () {
              taskData.updateTask(taskData.tasks[index]);
            },
             longpressCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
      },
    );
  }
}
