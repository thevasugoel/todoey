import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkboxState;
  final String name;
  final Function checkboxCallback;
  final Function checkboxCallback2;
   final Function longpressCallback;

  TaskTile(
      {this.checkboxState,
      this.name,
      this.checkboxCallback,
      this.checkboxCallback2,
      this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: checkboxCallback2,
      onLongPress: longpressCallback,
      title: Text(
          name,
          style: TextStyle(
      decoration: checkboxState ? TextDecoration.lineThrough : null),
        ),
      trailing: Checkbox(
        value: checkboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
