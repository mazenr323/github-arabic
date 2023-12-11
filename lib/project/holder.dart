/*
* import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/project/article%20model%20news%20app.dart';
import 'package:flutter_app/project/new_service.dart';

import 'newstyle.dart';
class newliststyle extends StatefulWidget {
  const newliststyle({
    Key? key,
  }) : super(key: key);

  @override
  State<newliststyle> createState() => _newliststyleState();
}

class _newliststyleState extends State<newliststyle> {
  List<ArticleModel>ariticles=[];
  bool isloading = true;

  @override
  void initState()  {
    super.initState();
    getgeneralNews();
  }

  Future<void> getgeneralNews() async {
    ariticles= await NewService(Dio()).getNews();
    isloading=false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading?
    Center(child: CircularProgressIndicator()):
    ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ariticles.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: newstyle(
              articleModel: ariticles[index],
            ),
          );
        });
  }
}
*
* */


//
// import 'package:flutter/material.dart';
//
// class Newslistvieww extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SliverList(delegate: SliverChildBuilderDelegate(childCount:10,
//         (context, index) => {
//       return null;
//         })));
//   }
// }
