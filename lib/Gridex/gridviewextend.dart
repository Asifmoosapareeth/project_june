import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview Builder'),),
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(15, (index) => Card(
          child: Center(
            child: Text('Hello'),
          ),
          )),
      ),

    );
  }
}