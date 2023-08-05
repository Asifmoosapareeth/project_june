import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: food(),
  ));
}

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.orange.shade300],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.utensils,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Fresh Foods",
                      style: GoogleFonts.lobster(
                        fontSize: 35,
                        color: Colors.white,

                      ),
                    ),
                    Text(
                      "Tasty & Healthy",
                      style: GoogleFonts.abel(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/fruitss.png',
                height: 250,
                width: 6000 ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}