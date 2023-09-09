import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  ImageProvider myimage;
  String name;
String Age;

   NewWidget({super.key,required this.myimage,required this.name,required this.Age});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: myimage,width: 100,height: 100,),
          Text(name),
          Text(Age),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed: (){}, icon:Icon(CupertinoIcons.add), label: Text('Add')),
              ElevatedButton.icon(onPressed: (){}, icon:Icon(CupertinoIcons.heart_fill), label: Text('Favorite')),

            ],
          )
        ],
      ),
    );
  }
}
