// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo_model.dart';
import 'package:flutter_todo_app/widget/todo_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<TodoModel> todos = [];
  TextEditingController todoController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Todo App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
            ),
            Expanded(
              child: Column(
                  children: todos
                      .map(
                        (item) => TodoItem(
                          title: item.title,
                        ),
                      )
                      .toList()),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                bottom: 50,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: todoController,
                        style: TextStyle(fontSize: 18),
                        decoration:
                            InputDecoration.collapsed(hintText: 'Add task...'),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          print(todoController.text);
                          setState(() {
                            todos.add(
                              TodoModel(
                                  title: todoController.text, isDone: false),
                            );

                            todoController.text = '';
                          });
                        },
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
