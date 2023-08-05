import 'dart:async';
import 'package:project_june/register.dart';
import 'package:project_june/stateful%20login%20with%20validation.dart';

import 'login.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: splash3(),));
}

class splash3 extends StatefulWidget {  //splash is initaillly immutable
  @override

  State<StatefulWidget> createState()=> splash3state(); //createstate() will create a mutable state for splash3

}
class splash3state extends State{
  @override
  void initState() {               //what will happen when the app or page is first launched
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>Login2()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(backgroundColor: Colors.black,

 body :Stack(
   children: [
     Positioned(bottom: 0, left: 600,
       child: Image.asset('assets/icons/metainsta.png', width: 200,),),
     Positioned(bottom: 95, left: 685,
       child: Text('from', style: TextStyle(fontSize: 18,color: Colors.grey),),),
     Positioned(bottom: 400, left: 600,
       child: Image.asset('assets/icons/instaa.jpg', width: 200,),)
   ],
 )
 );
  }
}