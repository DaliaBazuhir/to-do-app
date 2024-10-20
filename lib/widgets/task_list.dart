
import 'package:flutter/material.dart';
import 'package:todo/widgets/task_title.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/Task_Data.dart';
class TasksList extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context,TaskData,child){
          return ListView.builder(
              itemCount:TaskData.tasks.length,
              itemBuilder: (context,index) {
                return TaskTitle(
                    title: TaskData.tasks[index].taskName,
                    isChecked: TaskData.tasks[index].isDone,
                    changedState: (newValue) {
                      TaskData.updateTask(TaskData.tasks[index]);
                      //   setState(() {
                      //     widget.tasks[index].doneChanged();
                    },
                    listTitleDelete: (){
                      TaskData.deleteTask(TaskData.tasks[index]);
                    }
                );

              });
        });


  }
}

