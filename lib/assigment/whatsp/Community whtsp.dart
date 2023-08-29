import 'package:flutter/material.dart';


class WhatsAppcommunity extends StatelessWidget {
  const WhatsAppcommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8),
                  child: Card(
                    child: Container(width: 35,height: 35,
                        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(5),shape: BoxShape.rectangle),

                        child: Icon(Icons.groups,color: Colors.white,)),
                  ),
                ),
                SizedBox(width: 13,height: 13,),
                Text("New community",style: TextStyle(fontWeight: FontWeight.bold),),


              ],
            ),

            Positioned(top: 29,left: 31,
                child: Icon(Icons.add_circle,color: Colors.teal,size: 21)),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 8),
                  child: Card(
                    child: Container(
                      width: 35,height: 35,
                      decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(5),shape: BoxShape.rectangle),

                      child: Icon(Icons.groups,color: Colors.white,),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 55,left: 14),
                  child: Text("Luminar June 23 Community",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 115,left: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(14)),
                    child: Icon(Icons.group,color: Colors.white,size: 30,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 19,top: 110),
                  child: Text("FLT B1 June 23",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            )
          ],
        )
    );
  }
}