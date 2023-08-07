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
        padding: const EdgeInsets.all(50.0),
        child: GridView.count(crossAxisCount: 2,
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          children: List.generate(6, (index) =>
              Container(
                height: 50,
         width: 50,
         decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(50),

           color: color[index],
         ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('heart shaker'),
                  Icon(
                    icons[index],)

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