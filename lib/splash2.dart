import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Splash2(),));
}
class Splash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      ///set background color way 1
      //backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          ///way 2
            // gradient:LinearGradient(
            //   begin:Alignment.bottomRight,
            //     end: Alignment.topRight,
            //     colors: [Colors.redAccent,Colors.blueAccent,Colors.amber])
        ///set background colour way 3
          image:DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage("Assets/images/Facebook.svg.png"))
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.cake,size: 90,color: Colors.redAccent,),
              Image.asset('assets/icons/fb.png',height: 200,width: 200,),
              const Text("facebook",style:TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,
              color: Colors.blue),),
            ],
          ),
        ),
      ),
    );
  }
}