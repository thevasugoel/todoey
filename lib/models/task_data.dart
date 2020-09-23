import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Buy apple'),
    Task(title: 'Buy MILK'),
    Task(title: 'Buy juice'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle){
    final task = Task(title: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}