import 'package:flutter/material.dart';
import '../models/number.dart';
import 'texts.dart';

class item extends StatelessWidget {
    item( this.number );

    itemmodel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white70,
            child: Image.asset(number.image)),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              txt1(name: number.jpName,color: Colors.white),
              txt1(name: number.enName,color: Colors.white),
            ],),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(10.0),

            child: IconButton(
              onPressed: (){
              },
                icon: Icon(Icons.play_arrow_sharp,
                  size: 33,
                  color: Colors.white,
                )),
          ),
        ],

      ),
    );
  }
}


class itemfamily extends StatelessWidget {
  itemfamily( this.nnumber );

  itemmodel nnumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Colors.white70,
              child: Image.asset(nnumber.image)),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              txt1(name: nnumber.jpName,color: Colors.white),
              txt1(name: nnumber.enName,color: Colors.white),
            ],),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(10.0),

            child: IconButton(
                onPressed: (){
                },
                icon: Icon(Icons.play_arrow_sharp,
                  size: 33,
                  color: Colors.white,
                )),
          ),
        ],

      ),
    );
  }
}


class itemphase extends StatelessWidget {
  itemphase( this.nnumber );

  itemmodel nnumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Colors.white70,
              child: Image.asset(nnumber.image)),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              txt1(name: nnumber.jpName,color: Colors.white),
              txt1(name: nnumber.enName,color: Colors.white),
            ],),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(10.0),

            child: IconButton(
                onPressed: (){
                },
                icon: Icon(Icons.play_arrow_sharp,
                  size: 33,
                  color: Colors.white,
                )),
          ),
        ],

      ),
    );
  }
}



