import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listview_Custom2(),));
}
class Listview_Custom2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Custom'),
      ),
     body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) =>
         Text('hai all'))),
    );
  }
}
