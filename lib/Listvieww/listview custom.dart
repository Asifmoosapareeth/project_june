import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listview_Custom(),));
}
class Listview_Custom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Custom'),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
           List.generate(10, (index) => Text('Hello world'))
          )),
    );
  }
}
