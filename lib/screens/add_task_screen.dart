import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

     String input;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                onChanged: (value){
                    input = value;
                },
                style: TextStyle(fontSize: 20.0),
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(focusColor: Colors.lightBlueAccent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {
                print(input);
                Provider.of<TaskData>(context,listen: false).addTask(input);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
