import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    home: listviewui(),));
}

class listviewui extends StatelessWidget {
  var fruit=['assets/images/fruits/apple.jpg','assets/images/fruits/banana.jpg','assets/images/fruits/grapes.jpg','assets/images/fruits/kiwi.jpg',
  'assets/images/fruits/mango.jpg','assets/images/fruits/orange.jpg','assets/images/fruits/watermelon.jpg'];
  var name=['apple','banana','grapes','kiwi','mango','orange','watermelon'];
  var unit=['Kg','Doz','Doz','Kg','Kg','pc','doz'];
  var price=['20', '30', '10', '8','25','40','15'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Icon(CupertinoIcons.cart),
          SizedBox(width: 40,)
        ],
        title: Center(child: Text('Product List')),
      ),
body: ListView.builder(
    itemCount: fruit.length,
    itemBuilder: (context,index){
  return Card(

    color: Colors.grey,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 30,),
        Image.asset(fruit[index],width: 50,height: 70, ),
        SizedBox(width: 20,),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('name : ${name[index]}'),
                Text('unit : ${unit[index]} '),
                Text('price:\$ ${price[index]} ')
              ],
        )
        ),

           Padding(
             padding: const EdgeInsets.only(right: 50),
             child: Container(
               height: 40,
              child: Card(
                color: Colors.black,
                child: Center(
                    child: Text('Add to Cart',style: TextStyle(color: Colors.white),)),
              ),
          ),
           ),



      ],

    )
  );

}) ,

    );
  }
}
