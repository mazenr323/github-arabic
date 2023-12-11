import 'package:flutter/material.dart';
import '../models/categoty_model.dart';
import 'categoryView.dart';
class categoryCard extends StatelessWidget {
  categoryCard({required this.category});
 final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (c){
      return categoryView();        }
));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
            height: 100,
            width:200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit:BoxFit.fill,
                  image: AssetImage(category.image)),
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text(category.categoryName,

              style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)
            ),
          ),
      ),
    );


  }
}
