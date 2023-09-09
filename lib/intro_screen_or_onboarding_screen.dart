import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_june/assigment/contact%20ui.dart';
import 'package:project_june/splash2.dart';

void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.purple
      ),
      bodyTextStyle: GoogleFonts.abel(
        fontStyle: FontStyle.italic,fontSize: 30,color: Colors.pinkAccent,
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.greenAccent,
          Colors.red,
          Colors.yellow,
          Colors.grey,
          Colors.red
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'first page',
          body: 'Introduction screen shows the details of the app and demo of the pages',
          image: IntroImage('https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
        ),
        PageViewModel(
          decoration: pageDecoration,
            title: 'Second page',
            body: 'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage('https://images.unsplash.com/photo-1519766304817-4f37bda74a26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80')
        ),
        PageViewModel(
          decoration: pageDecoration,
            title: 'Third page',
            body: 'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage2('assets/images/himalayam.jpg')
        ),
      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact())),
      showSkipButton: true,
      skip: Text('skip'),
      next: Icon(Icons.arrow_forward),
      done: Text('done'),
      dotsDecorator: DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.blue,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        )
      ),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(image,width: 500,),
    );
  }

  Widget IntroImage2(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(image,width: 300,),
    );
  }
  //
  // Widget IntroImage3(String image) {
  //   return Align(
  //     alignment: Alignment.center,
  //     child: Image.network(image,width: 400,),
  //   );
  // }

}
