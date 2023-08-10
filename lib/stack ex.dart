import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackex(),));
}
class Stackex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(40),
               image: DecorationImage(image: AssetImage('assets/images/fincher.jpg'))
             ),
            ),
            Positioned(
              left: 50,top: 50,
              child: Container(
                height: 400,
                width: 400,
                color: Colors.red,
              ),
            ), Positioned(
              left: 100,top: 100,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.yellowAccent,
              ),
            ), Positioned(
              left: 150,top: 150,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.pinkAccent,
              ),
            ), Positioned(
              left: 200,top: 200,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
