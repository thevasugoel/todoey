import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkboxState;
  final String name;
  final Function checkboxCallback;
  final Function checkboxCallback2;

  TaskTile(
      {this.checkboxState,
      this.name,
      this.checkboxCallback,
      this.checkboxCallback2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onTap: checkboxCallback2,
        child: Text(
          name,
          style: TextStyle(
              decoration: checkboxState ? TextDecoration.lineThrough : null),
        ),
      ),
      trailing: Checkbox(
        value: checkboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
