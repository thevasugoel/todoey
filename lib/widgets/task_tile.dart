import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checkboxState = false;

  void checkboxCallback(newValue) {
    setState(() {
      checkboxState = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
            decoration: checkboxState ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(checkboxState, checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckboxCallback;

  TaskCheckbox(this.isChecked, this.toggleCheckboxCallback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckboxCallback,
    );
  }
}
