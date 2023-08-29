import 'package:flutter/material.dart';

class WhatsappStatus_UI extends StatelessWidget {
  WhatsappStatus_UI({super.key});
  var image=['assets/images/sachin.jpg','assets/images/kohli.png','assets/images/ronaldo.webp','assets/images/messi.jpg','assets/images/mohanlal.jpg',
    'assets/images/mamooty.jpg','assets/images/nolan.jpg','assets/images/fincher.jpg','assets/images/biden.jpg','assets/images/modi.jpg'];
  var name = ['Sachin','kohli','Ronaldo','messi','Mohanlal','mammootty','Nolan','Fincher','Biden','Modi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Replace with the number of status items
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index]),
            subtitle: Text('Today, 3:00 PM'),
            onTap: () {
              // Handle status item tap
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

             FloatingActionButton(
               backgroundColor: Colors.teal,
              onPressed: () {
                // Handle the first FAB tap
              },
              child: Icon(Icons.camera_alt),
            ),

          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: () {
              // Handle the second FAB tap
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}


