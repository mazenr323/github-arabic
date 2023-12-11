import 'package:flutter/material.dart';

Widget btn1({String name='',required Function () event})
=> MaterialButton(onPressed:
    event,
    child: Text(name,
      style: TextStyle(
          color:Colors.white,
          backgroundColor: Colors.blueAccent,
          fontSize: 33,
          fontWeight:FontWeight.bold),
    ),);


