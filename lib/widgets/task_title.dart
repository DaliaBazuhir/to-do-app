import 'package:flutter/material.dart';


class TaskTitle extends StatelessWidget {

  @override
  bool? isChecked ;
  final String? title;
  final void Function(bool? state) changedState;
  final void Function() listTitleDelete;
  TaskTitle({
    required this.title,
    required this.isChecked,
    required this.changedState,
    required this.listTitleDelete});
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title!,
        style: TextStyle(decoration:  isChecked! ? TextDecoration.lineThrough: null),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: changedState,
      ),
      onLongPress: listTitleDelete,
    );
  }
}

