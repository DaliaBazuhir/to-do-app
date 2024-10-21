import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:provider/provider.dart';

import 'package:todo/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Colors.lightBlue,
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder:(context) => AddTaskScreen((newTaskTitle) {
              }));
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,size: 30,color: Colors.lightBlue,),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('To Do List',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40,color: Colors.white),),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('${Provider.of<TaskData>(context).tasks.length} Tasks',style: TextStyle(fontSize: 30,color: Colors.white),),
              ],
            ),
          ),
          Expanded(child:
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
            ),
            child: TasksList(),
          ),
          ),
        ],
      ),
    );
  }
}
