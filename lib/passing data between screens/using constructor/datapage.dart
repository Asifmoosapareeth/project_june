import 'package:flutter/material.dart';
import 'package:project_june/passing%20data%20between%20screens/using%20constructor/to_stateful_page.dart';
import 'package:project_june/passing%20data%20between%20screens/using%20constructor/to_stateless_page.dart';
void main(){
  runApp(MaterialApp(home: Datapage(),));
}
class Datapage extends StatelessWidget {
  String name = "Luminar";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hi'),),
    body: Container(
      alignment: Alignment.center,
      height: 250,
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>StatelessPage(name:name,Location:'Kakkanad',phone:7559815386)));
          },
              child: Text('To Stateless page')),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StatefulPage(
                        name: name,
                        Location: "Kakkanad",
                        phone: 9876543210)));
              },
              child: Text('to stateful page'))
        ],
      ),
    ),
    );
  }
}
