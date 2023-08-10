import 'package:flutter/material.dart';
 void main(){
  runApp(MaterialApp(home: Expandeddex(),));
}

class Expandeddex extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    Expanded(child: Image.asset('assets/images/ronaldo.webp')),
    SizedBox(height: 20,),
    Expanded(child: Image.asset('assets/images/mohanlal.jpg')),
    SizedBox(height: 20,),
    Expanded(child: Image.asset('assets/images/nolan.jpg'))
  ],
),
    );
  }
}
