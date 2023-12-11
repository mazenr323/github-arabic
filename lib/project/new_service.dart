import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'article model news app.dart';

class NewService {
  final Dio dio;
  NewService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    }  catch (e) { return[];}
  }
}

//  Future<List<ArticleModel>>getnews()async {
// var response = await dio.get(
//     'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=general');
// Map<String,dynamic> jsonData = response.data;
//   List<dynamic>articles=jsonData['articles'];
//
//   List<ArticleModel>articlesList =[];
// for (var article in articles){
//   ArticleModel articleModel = ArticleModel(
//     image: article['urlToImage'],
//     title: article['title'],
//     subtitle: article['description'],
//               );
// articlesList.add(articleModel);
//          }
// return articlesList;
//
//  }
