import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Chat_Whatsp(),));
}
class Chat_Whatsp extends StatelessWidget {
  var name = ['Sachin','kohli','Ronaldo','messi','Mohanlal','mammootty','Nolan','Fincher','Biden','Modi'];
  var image=['assets/images/sachin.jpg','assets/images/kohli.png','assets/images/ronaldo.webp','assets/images/messi.jpg','assets/images/mohanlal.jpg',
    'assets/images/mamooty.jpg','assets/images/nolan.jpg','assets/images/fincher.jpg','assets/images/biden.jpg','assets/images/modi.jpg'];
  var time=['1:10 pm','3:16 pm','1:56 pm','8:10 am','6:59 am','7:10 pm','9:10 am','2:30 pm','4:45 pm','5:21 am',];
  var msg=['sticker','long time no see','suii','hei','mone','sugalle','how is openheimer','are u bzy','when is your next trip to usa', 'mere desh vaasiyom'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(msg[index]),
            trailing: Wrap(
                direction: Axis.vertical,
                children:[
                  Text(time[index]),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                        minRadius: 2,
                        maxRadius: 10,
                        backgroundColor: Colors.teal,
                        child: Text('2')
                    ),
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