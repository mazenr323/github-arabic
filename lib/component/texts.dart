import 'package:flutter/material.dart';



 Widget txt1 ({required String name ,
  Color color=Colors.blue,TextAlign textAlign=TextAlign.start, fontSize ='',fontWeight='',fontStyle:FontStyle.normal,})
=> Text(name,
 textAlign:textAlign ,
 style: TextStyle(
 color: color,
 fontSize: 20 ,
  fontStyle:FontStyle.italic,
 ),
 );
