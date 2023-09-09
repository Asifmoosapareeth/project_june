import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june/widget%20refractorng/new%20widget.dart';
void main (){
  runApp(MaterialApp(home: RefraHome(),));
}

class RefraHome extends StatelessWidget {
  var name = ['Sachin','kohli','Ronaldo','messi','Mohanlal','mammootty','Nolan','Fincher','Biden','Modi'];
  var image=['assets/images/sachin.jpg','assets/images/kohli.png','assets/images/ronaldo.webp','assets/images/messi.jpg','assets/images/mohanlal.jpg',
    'assets/images/mamooty.jpg','assets/images/nolan.jpg','assets/images/fincher.jpg','assets/images/biden.jpg','assets/images/modi.jpg'];
  var age=[55,32,36,35,60,70,58,67,67,75];
  RefraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid view using refractoring'),),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: 10,
        itemBuilder: (context,index){
      return NewWidget(myimage: AssetImage(image[index]),
        name: name[index],
        Age: 'age => ${age[index]}',);
        }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          Image.asset('assets/images/fruitsalad.jpg',height: 100,),
          SizedBox(height: 15,),
          Text('Fruit salad',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
          Text('\$ 5',style: TextStyle(fontSize: 15,color: Colors.black),),
          SizedBox(height: 23,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed: (){}, icon:Icon(CupertinoIcons.cart),  label: Text('shop')),
              SizedBox(width: 15,),
              ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.favorite),  label: Text('wishlist')),
            ],
          )
        ],
      ),
    );
  }
}
