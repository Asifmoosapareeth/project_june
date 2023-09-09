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
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1597655601841-214a4cfe8b2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=689&q=80'))
              ),
            ),
            Positioned(
              bottom: 10,left: 50,
              child: Container(
                height: 50,
                width: 100,
                child: Text('Asif Moosa',style: TextStyle(fontSize: 15,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
              ),
            ), Positioned(
              right: 50,top: 10,
              child: Container(
                height: 50,
                width: 150,
                child: Text('SBI Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ),
            ),
            Positioned(
              bottom: 10,left: 150,
              child: Container(
                height: 50,
                width: 100,
                child: Text('Valid upto 12/28',style: TextStyle(fontSize: 15,color: Colors.yellowAccent.shade100,fontWeight: FontWeight.bold),),
              ),
            ),
            Positioned(
              bottom: 90,left: 130,
              child: Container(
                height: 50,
                width: 300,
                child: Text('1575  3589  1257  1697',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}