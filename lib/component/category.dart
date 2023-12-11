import 'package:flutter/material.dart';
class category extends StatelessWidget {
  category({this.text,this.color,this.onTap});
  Color? color;
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color:color),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child:  Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text!,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24),
          ),
        ),
      ),
    );
  }
}
