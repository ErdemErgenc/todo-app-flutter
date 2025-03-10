import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?) onChanged;
  Function(BuildContext)? deleteFunction;


   ToDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged, required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        
        endActionPane: ActionPane(motion: StretchMotion(), children: [SlidableAction(onPressed: deleteFunction,icon: Icons.delete,backgroundColor: Colors.red, borderRadius: BorderRadius.circular(20),)]),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.yellow[700],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged,),
              Text(taskName, style: GoogleFonts.abel(fontSize: 20, decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none),),
            ],
          ),
        ),
      ),
    );
  }
}
