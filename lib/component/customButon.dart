import 'package:flutter/material.dart';

class customboton extends StatelessWidget {
  customboton({required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 60,
      child: Center(
          child: Text(text)),
    );
  }
}
