import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: BottomSheett(),));
}

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom sheet with image on tap'),),
      body: Center(
        child: GestureDetector(  //or you can use InkWell also for performing events
          onTap: ()=> showSheet(context),
            child: Image.asset('assets/images/himalayam.jpg')),
      ),
    );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text('whatsapp'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text('facebook'),
            ),ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.purpleAccent,),
              title: Text('instagram'),
            ),ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.lightBlueAccent,),
              title: Text('Twitter'),
            ),
          ],
        ),
      );
    });
  }
}
