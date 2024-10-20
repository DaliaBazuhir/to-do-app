import 'package:flutter/material.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks =[
    Task(taskName: 'Do homework'),
    Task(taskName: 'Cooking'),
    Task(taskName: 'workout'),


  ];
  void addTask(String newTaskTitle){
    tasks.add(Task(taskName: newTaskTitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChanged();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}