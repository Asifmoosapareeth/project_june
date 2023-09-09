import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  int? phone;

 final String Location;

 final String name;

  StatelessPage({super.key, required this.phone, required this.Location,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recieved data'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: GoogleFonts.habibi(fontSize: 35,color: Colors.cyanAccent,fontWeight: FontWeight.bold),),
            Text(Location,style: GoogleFonts.taiHeritagePro(fontSize: 30,color: Colors.purpleAccent,fontWeight: FontWeight.bold),),
            Text('$phone',style: GoogleFonts.b612Mono(fontSize: 20,color: Colors.yellowAccent,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
