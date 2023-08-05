import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: ListView1(),));
}
class ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:
       Center(child: Text('Zomato',style: GoogleFonts.bungeeSpice(fontSize: 40,fontWeight: FontWeight.bold),)),
      ),
      body: ListView(
        children: [
           SizedBox(width: 100,height: 40,),
          Center(child: Text('Select Your food !!',style: GoogleFonts.eduSaBeginner(
            fontSize: 35,color: Colors.pink,fontWeight: FontWeight.bold),
          )),
          SizedBox(width: 100,height: 40,),
         Card(
          child: ListTile(
            title: Text('pizza'),
            subtitle:Text("\$50"),
            trailing: Icon(Icons.shopping_cart,color: Colors.blueAccent,),
            leading: Image.asset('assets/images/pizza.webp'),
          ),
        ),
          Card(
            child: ListTile(
              title: Text('Burger'),
              subtitle:Text("\$5"),
              trailing: Icon(Icons.shopping_cart,color: Colors.red,),
              leading: Image.asset('assets/images/burger.jpg'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('fruit salad'),
              subtitle:Text("\$0.5"),
              trailing: Icon(Icons.shopping_cart,color: Colors.green,),
              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/fruitsalad.jpg')),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('biriyani'),
              subtitle:Text("\$0.5"),
              trailing: Icon(Icons.shopping_cart,color: Colors.pink,),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i0.wp.com/hattyfoods.com/wp-content/uploads/2020/07/chick-dum-briyani-recipe.jpg?resize=768%2C500&ssl=1"),
              )
            ),
          ),
          Card(
            child: ListTile(
                title: Text('shavarma'),
                subtitle:Text("\$15"),
                trailing: Icon(Icons.shopping_cart,color: Colors.amberAccent),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/668554280/photo/chicken-shawarma-durum-doner-kebab-copy-space.jpg?s=1024x1024&w=is&k=20&c=9KcFtZSKdNPGcXmNy5JfX1KtLgLzp7X1iGbaNT5DUb4="),
                )
            ),
          ),

        ],
      )
    );
  }
}
