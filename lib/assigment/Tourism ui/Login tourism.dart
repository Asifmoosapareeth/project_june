import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Tourism_Home(),));
}

class Tourism_Home extends StatefulWidget {


  @override
  State<Tourism_Home> createState() => _Tourism_HomeState();
}

class _Tourism_HomeState extends State<Tourism_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(
            child: Image(image: NetworkImage("https://logos-download.com/wp-content/uploads/2021/01/Kerala_Tourism_Logo.png"),
              width: 150,height: 150,),
          ),

          SizedBox(height: 80),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(130, 40)
              ),
              onPressed: (){},
              child: Text("Log In")),

          SizedBox(height: 10,),
          Text("-or-"),


          SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(220, 40)
              ),
              onPressed: (){},
              child: Row(mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Login With FaceBook",style: TextStyle(fontSize: 12),),
                  SizedBox(width: 40,),
                  Icon(Icons.facebook,size: 20,),
                ],
              )),

          SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(220, 40)
              ),
              onPressed: (){},
              child: Row(mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Login With Mobile",style: TextStyle(fontSize: 12),),
                  SizedBox(width: 60,),
                  Icon(FontAwesomeIcons.mobile,size: 20,),
                ],
              )),


          SizedBox(height: 15,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  minimumSize: Size(220, 40)
              ),
              onPressed: (){},
              child: Row(mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Login With Google",style: TextStyle(fontSize: 12),),
                  SizedBox(width: 60,),
                  Icon(FontAwesomeIcons.google,size: 20,),
                ],
              )),

        ],
      ),
    );
  }
}