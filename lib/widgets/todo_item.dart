import 'package:flutter/material.dart';
import 'package:todo_flutter/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Clicked on todo item");
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: blueColor,
        ),
        title: const Text(
          "Todo Task 1",
          style: TextStyle(
            fontSize: 16,
            color: blackColor,
            decoration: TextDecoration.lineThrough,
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
              print("Clicked on deleted todo item");
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
