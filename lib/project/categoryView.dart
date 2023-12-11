import 'package:flutter/material.dart';
import 'article model news app.dart';
import 'new-List_view_bulder.dart';
import 'newListView.dart';
// هنا في ايرور علشان مش عامل السيلفير علشان مش راضي يشتغل عندي
class categoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        children: [
          Expanded(child: newliststyle()),
        ],
      )
      );
}
}
