import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  var image=['assets/images/bag.jpg','assets/images/sunglass.jpg','assets/images/belt.webp','assets/images/chain.jpg','assets/images/earings.jpg',
    'assets/images/sockss.webp'];
  var price=['120','58','35','98','34','12'];
  var name=['bag','sunglass','belt','chain','earing','socks'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu)
       , title: Text('SHRINE',style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.sort_outlined)
        ],
      ),
      body: GridView(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: List.generate(6, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white60,
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite,color: Colors.red,),
                    ],
                  ),
                  Image.asset(image[index],height: 100,fit: BoxFit.cover,),
                  Text('name : ${name[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text('price : \$ ${price[index]}',),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   Icon(Icons.shopping_cart,color: Colors.blue,)
                    ],
                  ),
                ],
                
              ),

            ),
          )


          )
      ),
    );
  }
}
