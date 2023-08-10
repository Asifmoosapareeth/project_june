
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Gridviewui(),
  ));
}

class Gridviewui extends StatelessWidget {
  List<IconData> icons = [
    Icons.home,
    Icons.notification_important_rounded,
    Icons.camera_alt_outlined,
    Icons.airplane_ticket_outlined,
    Icons.wallet,
    Icons.delivery_dining,
  ];
  var color = [Colors.green,Colors.red,Colors.teal,Colors.purple,Colors.blue,Colors.yellowAccent,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview Builder'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 2,
          mainAxisSpacing: 100,
          crossAxisSpacing: 50,
          children: List.generate(6, (index) =>
              Container(
         decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(70),

           color: color[index],
         ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],) ,
                  Text('heart shaker')

                    ]
                  ),
                ),
            ),
          )
          ),
      ),
    );
  }
}