import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Tourism_booking extends StatefulWidget {
  const Tourism_booking({super.key});

  @override
  State<Tourism_booking> createState() => _Tourism_bookingState();
}

class _Tourism_bookingState extends State<Tourism_booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           SizedBox(height: 20,),
           Row(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Romantic getaway place for couples',style: GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 15),),
       RatingBar.builder(
         initialRating: 3,
         minRating: 1,
         direction: Axis.horizontal,
         allowHalfRating: true,
         itemCount: 5,
         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
         itemBuilder: (context, _) => Transform.scale(
           scale: .5,
           child: Icon(
             Icons.star,
             color: Colors.amber,
           ),
         ),
         onRatingUpdate: (rating) {
           print(rating);
         },
       ),
                   Text('4.5 rating',style: TextStyle(fontSize: 10),)
                 ],
               ),
               SizedBox(width: 30,),
               Image.network('https://images.unsplash.com/photo-1588893968277-50b9e91ba970?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
                 ,height: 120,width: 220,)],
           ),
           SizedBox(height: 12,),
           Align(alignment: Alignment.centerLeft,
               child: Text('About Places',style: GoogleFonts.albertSans(fontSize: 18,fontWeight: FontWeight.bold),)),
           SizedBox(height: 12,),
           Text(
             " Our Romantic Getaway destinations are carefully"
                 " curated to provide couples with the ultimate escape from the everyday"
                 " hustle and bustle. Immerse yourselves in the charm of secluded beaches,"
                 " luxurious resorts, and intimate hideaways that offer the perfect"
                 " backdrop for romance.",
             style: TextStyle(
               fontSize: 12, color: Colors.black,),),
           SizedBox(height: 10,),
           Align(alignment: Alignment.centerLeft,
               child: Text('Special facilities',style: GoogleFonts.albertSans(fontSize: 18,fontWeight: FontWeight.bold),)),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Wrap(spacing: 12,
                   children: [Icon(Icons.car_repair,color: Colors.blue,),
    Text('parking',style: TextStyle(color: Colors.blue),),],),

                 Wrap(spacing: 10,
                   children: [Icon(Icons.headset_mic_outlined,color: Colors.blue,),
    Text('24*7 Support',style: TextStyle(color: Colors.blue),),],),

          Wrap(spacing: 10,
              children: [
    Icon(Icons.wifi,color: Colors.blue,),
    Text('free wifi',style: TextStyle(color: Colors.blue),),
    ],)
               ],
             ),
           ),
           SizedBox(height: 14,),
           ClipRRect(
             borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
             child: Image.network(
               'https://images.unsplash.com/photo-1588893968277-50b9e91ba970?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
               fit: BoxFit.fill, // Adjust the fit mode as needed
               height: 150,
               width: 300,
             ),
           ),
           SizedBox(height: 15,),
           Align(alignment: Alignment.centerLeft,
               child: Text('Special facilities',style: GoogleFonts.albertSans(fontSize: 18,fontWeight: FontWeight.bold),)),
          Container(width: double.infinity,height: 130,color: Colors.white38,
          child: GridView.builder(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 5,
              crossAxisCount: 4),itemCount: 4,
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 35,bottom: 35,left: 25,right: 25),
              child: ClipRRect(borderRadius: BorderRadius.circular(7),
                child: Container(
                  color: Colors.grey,
                  height: 15,width: 20,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Adult',style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text('1',style: TextStyle(fontSize: 15,color: Colors.black),)
                    ],
                  ),
                ),
              ),
            );
              }),
          ),
           SizedBox(height: 12,),
           ElevatedButton(

               onPressed: (){},
               child: Text('Explore',style: TextStyle(fontSize: 18),))


         ],
       ),
     ),



    );
  }
}
