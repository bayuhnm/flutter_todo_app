// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ListTile(
        title: Text('Beli Iphone'),
        trailing: Icon(Icons.check),
      ),
    );
  }
}
