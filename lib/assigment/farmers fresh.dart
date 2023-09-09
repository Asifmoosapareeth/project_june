import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Farmers_freshui(),));
}

class Farmers_freshui extends StatefulWidget {
  const Farmers_freshui({super.key});

  @override
  State<Farmers_freshui> createState() => _Farmers_freshuiState();
}

class _Farmers_freshuiState extends State<Farmers_freshui> {
  int index=0;
  List itemnames=['Apple','Banana','grapes','kiwi','mango','orange'];
  List itempic=['assets/images/fruits/apple.jpg','assets/images/fruits/banana.jpg','assets/images/fruits/grapes.jpg','assets/images/fruits/kiwi.jpg',
  'assets/images/fruits/mango.jpg','assets/images/fruits/orange.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'FARMERS FRESH ZONE',style: GoogleFonts.exo2(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: [
       Container(
       child: Row(
    children: [
      Icon(Icons.location_on_outlined,size: 18,),
      SizedBox(width: 5,),
      Text('kochi',style: TextStyle(fontSize: 18),),
      SizedBox(width: 5,),
      Icon(Icons.arrow_drop_down,size: 18,)
    ],
  ),
)
        ],
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: 'Account'),
          ]),
      body: Column(
        children: [
          Container(height:65,width: double.infinity,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search for Vegitables ,fruits ...',
                  prefixIcon: Icon(Icons.search_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Colors.white
                ),
                ),
            ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 TextContainer(text: 'Vegitables'),
                 TextContainer(text: 'Fruits'),
                 TextContainer(text: 'Exotic'),
                 TextContainer(text:'Fresh Cuts' )
               ],
            ),
          CarouselSlider(items: [
            Image.asset('assets/images/fruits/freshfrut.jpg'),
            Image.asset('assets/images/fruits/freshveg.jpg')
          ],
              options: CarouselOptions(
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeFactor: 1,
                viewportFraction: .5,

              )
          ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
       Column(
       children: [
       Icon(CupertinoIcons.timer), // Replace with your icon
      SizedBox(height: 8),
          Text('30 min policy'),
                ],
       ),
       Column(
       children: [
       Icon(CupertinoIcons.device_phone_portrait), // Replace with your icon
       SizedBox(height: 8),
       Text('Traceability'),
       ],
       ),
            Column(
              children: [
                Icon(Icons.person_pin_outlined), // Replace with your icon
                SizedBox(height: 8),
                Text('Local sourcing'),
              ],
            ),
          ],
              ),
          ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Shop by Catogory',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemCount: 6,
                  itemBuilder: (BuildContext context,int index){
                    return Griditemss(lname: itemnames[index], myimage: AssetImage(itempic[index]),);
                  }
              )

          )

          
        ],
      ),
    );
  }
}
class TextContainer extends StatelessWidget {
  final String text;

  TextContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green)
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.green,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
class Griditemss extends StatelessWidget {
  String lname;
  ImageProvider myimage;

  Griditemss({super.key,required this.lname,required this.myimage,});

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,width: 100,
      child: Column(
        children: [
          Image(image: myimage,height: 80,width: double.infinity,),
          Text(lname,) 
        ],
      ),
    );
  }
}

