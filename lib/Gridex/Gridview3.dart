import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Gridview3(),
  ));
}

class Gridview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview Builder'),),
      body: GridView.extent(maxCrossAxisExtent: 3,
      children:
   List.generate(15, (index) =>  Card(
     child: Center(
       child: Text('hello',style: TextStyle(color: Colors.blue,fontSize: 10),),
     ),
   ))
        ,


      ),
    );
  }
}