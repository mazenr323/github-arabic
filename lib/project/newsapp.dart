import 'package:flutter/material.dart';
import 'categoriesList_view.dart';
import 'new-List_view_bulder.dart';
import 'newListView.dart';
import 'newstyle.dart';
class newsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('news', style: TextStyle(color: Colors.yellow)),
            Text('clouds', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
           child: Column(
             children: [
              CategoriesListView(),
              SizedBox(height: 15,),
               Expanded(child: NewsListViewBuilder()),
             ],
        ),
      ),
    );
  }
}
//child: CustomScrollView(
//   slivers: [
//     //ال slivers بتستخدم مجموعة من ال widget و ممكن يتعملهاا اسكرول
//     SliverToBoxAdapter(child: CategoriesListView()),
//     SliverToBoxAdapter(child: SizedBox(height: 15,),),
//     SliverToBoxAdapter(child:  newliststyle()),
//
//
//   ],
// ),