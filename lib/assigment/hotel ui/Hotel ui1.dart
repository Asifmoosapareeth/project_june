import 'package:flutter/material.dart';
import 'package:project_june/assigment/hotel%20ui/hotel%20data.dart';
import 'package:flutter/cupertino.dart';
import 'hotel ui2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUi1(),
  ));
}

class HotelUi1 extends StatefulWidget {
  const HotelUi1({Key? key}) : super(key: key);

  @override
  State<HotelUi1> createState() => _HotelUi1State();
}

class _HotelUi1State extends State<HotelUi1> {
  List colorr = [Colors.blue, Colors.red, Colors.yellowAccent];
  List iconn = [Icons.hotel, Icons.restaurant, Icons.local_cafe];
  List name = ['Hotel', 'Restaurant', 'Cafe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Icon(Icons.favorite),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Type Your Location',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: '          Kochi, kerala',
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(iconn[index]),
                        Text(name[index]),
                      ],
                    ),
                    width: 30,
                    height: 30,
                    color: colorr[index],
                    margin: EdgeInsets.all(8),
                  );
                }),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the second page when the image is clicked.
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HotelUI2(),
                      ));
                    },
                    child: Hoteldata(
                      Lname: 'Crowne Plaza kochi',
                      sname: 'Best hotel in kochi',
                      myimage: NetworkImage(
                          'https://ik.imgkit.net/3vlqs5axxjf/external/ik-seo/https://www.cfmedia.vfmleonardo.com/imageRepo/7/0/109/346/763/COKCH_3941030630_O/Crowne-Plaza-Kochi-Exterior.jpg?tr=w-780%2Ch-437%2Cfo-auto'),
                      rate: '1000',
                    ),
                  ),
                  SizedBox(height: 20,),
                  Hoteldata(
                    Lname: 'le meridien kochi',
                    sname: 'Style, comfort and sophistication blend effortlessly at Le Méridien Koch',
                    myimage: AssetImage('assets/images/le meridien.jpg'),
                    rate: '5000',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}