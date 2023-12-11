import 'package:flutter/material.dart';
import 'article model news app.dart';
class newstyle extends StatelessWidget {
  final ArticleModel Articlemodel;

  const newstyle({Key? key, required this.Articlemodel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(Articlemodel.image??'',
                height: 200,
                width: double.infinity,
                fit:BoxFit.cover,
              )
          ),
          SizedBox(height: 10 ,),
          Text(Articlemodel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black,
              fontSize:20 ,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8,),
          Text(Articlemodel.subtitle??'',
            maxLines: 2,
            style: TextStyle(color: Colors.grey,
              fontSize:14 ,
              fontWeight: FontWeight.bold,
            ),
          ),

        ]
    );

  }
}





// class newstyle extends StatelessWidget {
//   const newstyle({Key? key, required this.articleModel}) : super(key: key);
//   final ArticleModel articleModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//     children: [
//     ClipRRect(
//     borderRadius: BorderRadius.circular(6),
//     child: Image.network(articleModel.image??'',
//     height: 200,
//     width: double.infinity,
//     fit:BoxFit.cover,
//     )),
//     SizedBox(height: 10 ,),
//     Text(articleModel.title,
//     maxLines: 2,
//     overflow: TextOverflow.ellipsis,
//     style: TextStyle(color: Colors.black,
//     fontSize:20 ,
//     fontWeight: FontWeight.bold,
//     ),
//     ),
//     SizedBox(height: 8,),
//     Text(articleModel.subtitle??'',
//       maxLines: 2,
//       style: TextStyle(color: Colors.grey,
//     fontSize:14 ,
//     fontWeight: FontWeight.bold,
//     ),
//     ),
//
//     ]
//     );
//   }
// }
