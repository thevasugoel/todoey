import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: 'Buy apple'),
    Task(title: 'Buy MILK'),
    Task(title: 'Buy juice'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: tasks[index].title,
          checkboxState: tasks[index].isDone,
          checkboxCallback: (value) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
          checkboxCallback2: () {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
