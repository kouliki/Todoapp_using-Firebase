import 'package:flutter/material.dart';
import 'package:project_1/Colors/colors.dart';
import 'package:project_1/model/todo.dart';
// import 'package:todo_app/Colors/colors.dart';
// import 'package:todo_app/model/todo.dart';

class ToDoItem extends StatelessWidget {

  final Todo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key,required this.todo,required this.onToDoChanged,required this.onDeleteItem}) : super(key: key);  /// Todo is a parameter /////

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: (){
        //print('click on todo item');
        onToDoChanged(todo);
      },
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20)
    ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          tileColor:Colors.white,
          leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: tdBlue),
          title:  Text(todo.todoText!,
            style: TextStyle(fontSize: 16,color: tdBlack,
                decoration: todo.isDone? TextDecoration.lineThrough:null,
          ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),


            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5)
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              onPressed: (){
               // print("click on the item");
                onDeleteItem(todo.id);
              },
            ),
          ),



    ),);
  }
}
