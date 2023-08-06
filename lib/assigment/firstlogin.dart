import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june/assigment/loggin.dart';
import 'package:project_june/assigment/signuplogin.dart';

void main() {
  runApp(MaterialApp(
    home: Firstpage(),
  ));
}
class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20,height: 35,),
          Center(child: Text('Hello There !', style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold,),)),
          SizedBox(width: 20,height: 20,),
          Center(
            child: Text('Automatic identity verification which enables you to verify your identity',
              style: TextStyle(color: CupertinoColors.systemGrey,fontSize: 12,),),
          ),
          SizedBox(width: 20,height: 40,),
          Image.asset('assets/icons/lady.png', height: 200),
          SizedBox(width: 20,height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Second()));
          },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  )),
              child: Text('Log In')
          ),
          SizedBox(width: 20,height: 30,),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Third()));
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                )),
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }}