import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo td;
  final onToDoChanged;
  final onToDoDelete;
  const ToDoItem(
      {Key? key,
      required this.td,
      required this.onToDoChanged,
      required this.onToDoDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print("Clicked on todo item");
          onToDoChanged(td);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          td.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
          color: blueColor,
        ),
        title: Text(
          td.task!,
          style: TextStyle(
            fontSize: 16,
            color: blackColor,
            decoration: td.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              // print("Clicked on deleted todo item");
              onToDoDelete(td);
            },
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
