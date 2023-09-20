import 'package:flutter/material.dart';
import 'package:project_june/assigment/Tourism%20ui/Tourism%20booking.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Tourism_ui1(),));
}

class Tourism_ui1 extends StatefulWidget {
  const Tourism_ui1({super.key});

  @override
  State<Tourism_ui1> createState() => _Tourism_ui1State();
}

class _Tourism_ui1State extends State<Tourism_ui1> {
  List image=['https://images.unsplash.com/photo-1584098731294-e1e5453c8039?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80',
  'https://images.unsplash.com/photo-1599751229070-854ae5c90869?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1588893968277-50b9e91ba970?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1510797215324-95aa89f43c33?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80',
    'https://images.unsplash.com/photo-1506953823976-52e1fdc0149a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80',
    'https://images.unsplash.com/photo-1592345279419-959d784e8aad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'
  ];
  var names=['Eco-friendly Retreat','Adventure Haven','Romantic Getaway','Tropical Paradise','Coastal Wonderland','Urban Oasis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Go ',style: TextStyle(color: Colors.blue),),
            Text('Fast',style: TextStyle(color: Colors.black),),
          ],
        ),
        leading:Icon(Icons.menu,color: Colors.black,), 
        backgroundColor: Colors.white70,
        actions: [
        CircleAvatar(backgroundColor: Colors.blue,),
          SizedBox(width: 15,),
      ],),
 body: SingleChildScrollView(
   child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: TextField(
           decoration: const InputDecoration(
             border: OutlineInputBorder(
             ),
             hintText: 'search',
             suffixIcon: Icon(Icons.search_outlined)
           ),),),
       Padding(
         padding: EdgeInsets.symmetric(horizontal: 15),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Popular Places',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
             Text('View all',style: TextStyle(color: Colors.black,fontSize: 14),),],
         ),
       ),
       SizedBox(height: 15,),
       Container(
         height: 780,
         child: GridView.builder(
             gridDelegate:
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
             itemCount: 6,
             itemBuilder: (context,index){
               int number= index+1;
           return
             GestureDetector(
               onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => Tourism_booking(),
                 ));
               },
               child: Padding(
               padding: const EdgeInsets.only(left: 5,right: 5),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                 child: Container(
                   height: 200,width: 50,
                   color: Colors.black,
                   child: Stack(
                     children: [
                       Center(
                         child: Image.network(image[index],
                           width: double.infinity,
                           height: double.infinity,
                           fit: BoxFit.cover,),
                       ),
                       Positioned(left: 20,top: 20,
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                           child: Container(color: Colors.blue,
                             height: 20,width: 40,
                             child: Center(
                                 child: Text('$number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white70),)),
                           ),
                         ),
                       ),
                       Positioned(bottom: 10,left: 10,
                           child: Text(names[index],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
                     ],
                   ),
                 ),
               ),
           ),
             );
             }
         ),
       ),ElevatedButton(
         onPressed: () {
           // Your button's action here
         },
         style: ButtonStyle(
           minimumSize: MaterialStateProperty.all(Size(300, 50)),
         ),
         child: Text('Explore', style: TextStyle(fontSize: 18),),
       ),
       SizedBox(height: 25,)


     ],
   ),
 ),
    );
  }
}
