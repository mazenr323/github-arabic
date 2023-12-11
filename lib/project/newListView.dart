import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'article model news app.dart';
import 'new_service.dart';
import 'newstyle.dart';

class newliststyle extends StatefulWidget {
  @override
  State<newliststyle> createState() => _newliststyleState();
}

class _newliststyleState extends State<newliststyle> {
  List<ArticleModel> ariticles = [];
  bool isloading = true;
  @override
  initState() {
    super.initState();
    getGeneralnews();
  }

  Future<void> getGeneralnews() async {
    ariticles = await NewService(Dio()).getTopHeadlines();
    isloading = false;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return isloading ? Center(child: CircularProgressIndicator()): ListView.builder(
      itemCount: ariticles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: newstyle(
            Articlemodel: ariticles[index],
          ),
        );
      },
    );
  }
}

// SliverList(
//   delegate: SliverChildBuilderDelegate(
//         (context, index) {
//       return newstyle();},
//     childCount:10,
//   ),
// );

// return CustomScrollView(
//   slivers: [
//     SliverList(
//       delegate: SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//           return newstyle();
//         },
//         childCount: 10,
//       ),
//     ),
//     // Other sliver widgets...
//   ],
// );
