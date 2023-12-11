import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'article model news app.dart';
import 'newListView.dart';
import 'new_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> ariticles = [];
  bool isloading = true;

  @override
  void initState() {
    super.initState();
    getgeneralNews();
  }

  Future<void> getgeneralNews() async {
    ariticles = await NewService(Dio()).getTopHeadlines();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return isloading
     ? Center(child: CircularProgressIndicator())
      :ariticles.isNotEmpty? newliststyle(
   ) :  const ClipRRect(child:
      Text(' oops,there was an error, is not true')
    );
  }
}
