import 'package:flutter/material.dart';
class custemTextField extends StatelessWidget {
  custemTextField({this.hintText});
  String ?hintText;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      decoration: InputDecoration(
hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
            borderSide:BorderSide(
              color: Colors.white,)
        ),

      ),

    );
  }
}
