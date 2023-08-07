import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Grid view'),),
      body: GridView(gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 60),
      //SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: List.generate(15, (index) => Card(
          child: Center(
            child: Icon(Icons.account_balance),
          ),
        ))
      ),
    );
  }
}
