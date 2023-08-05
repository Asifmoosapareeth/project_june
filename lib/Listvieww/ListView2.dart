import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),));
}
class ListView2 extends StatelessWidget {
  var name = ['food1','food2','food3','food4','food5','food6','food7','food8','food9','food10'];
  var image=['assets/images/burger.jpg','assets/images/fruitsalad.jpg','assets/images/pizza.webp','assets/images/river.jpg',
      'assets/images/burger.jpg','assets/images/fruitsalad.jpg','assets/images/pizza.webp','assets/images/river.jpg',
    'assets/images/fruitsalad.jpg','assets/images/pizza.webp'];
  var price=[100,50,4,67,35,79,51,11,21,41];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 40,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text('New Group')),
                PopupMenuItem(child: Text('New Broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Stared messages')),
                PopupMenuItem(child: Text('Payment')),
                PopupMenuItem(child: Text('Settings'))
              ];
            })

          ],
          title: Text('Whatsapp')),
      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text('\$ ${price[index]}'),
            trailing: Wrap(
                direction: Axis.vertical,
                children:[
              Text('1:20'),
              SizedBox(height: 10,),

              CircleAvatar(
                minRadius: 2,
                maxRadius: 10,
                backgroundColor: Colors.teal,
                child: Text('2')
              )
            ]
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
          ),
        )),
      ),
    );
  }
}