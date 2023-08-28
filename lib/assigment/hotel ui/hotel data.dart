import 'package:flutter/material.dart';


class Hoteldata extends StatelessWidget {
  String Lname;
  String sname;
  String rate;

  ImageProvider myimage;
   Hoteldata({required this.Lname,required this.sname,required this.myimage,required this.rate});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Stack(
              children: [
                Image(image: myimage,height: 220,width: 430,),
              Positioned(right: 30,bottom: 30,
                  child: Text(rate,style: TextStyle(color: Colors.black87,backgroundColor: Colors.white,height: 2,),))
              ]),

          SizedBox(height: 10,),
          Text(Lname,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Text(sname),
          Text('Rating 4.3/5'),


        ],
      );

  }
}
