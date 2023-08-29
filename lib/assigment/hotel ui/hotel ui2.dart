
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: HotelUI2()));
}

class HotelUI2 extends StatefulWidget {
  const HotelUI2({Key? key}) : super(key: key);

  @override
  _HotelUI2State createState() => _HotelUI2State();
}

class _HotelUI2State extends State<HotelUI2> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(

        backgroundColor: Colors.grey.shade500,
        currentIndex: index,
        onTap:  (tappedindex) {
          setState(() {
            index = tappedindex;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Search'),
            selectedColor: Colors.deepPurple,
          ),
          SalomonBottomBarItem(
            icon: Icon(CupertinoIcons.heart),
            title: Text('Favorite'),
            selectedColor: Colors.deepPurple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            selectedColor: Colors.deepPurple,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://ik.imgkit.net/3vlqs5axxjf/external/ik-seo/https://www.cfmedia.vfmleonardo.com/imageRepo/7/0/109/346/763/COKCH_3941030630_O/Crowne-Plaza-Kochi-Exterior.jpg?tr=w-780%2Ch-437%2Cfo-auto',
                height: 340,
                width: double.infinity,
              ),
              Positioned(left: 50, top: 225,
                child: Text('Crowne plaza\nkochi ,kerala', style: GoogleFonts.notoSansAdlam(fontWeight: FontWeight.bold,
                    fontSize: 15, color: Colors.white,
                  ),
                ),
              ),
              Positioned(left: 50, top: 270,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('85 reviews',
                    style: TextStyle(color: Colors.white, fontSize: 12,),
                  ),
                ),
              ),
              Positioned(top: 275, right: 40,
                child: Icon(CupertinoIcons.heart, color: Colors.white,),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              SizedBox(
                width: 300,
              ),
              Text('\$ 200',
                style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold,),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              Icon(CupertinoIcons.location_solid, color: Colors.grey, size: 11,),
              Text('8 km to lulu mall', style: TextStyle(color: Colors.grey, fontSize: 7),),
              SizedBox(width: 346,),
              Text('per night', style: TextStyle(color: Colors.grey, fontSize: 9),)
            ],
          ),
          Container(height: 40, width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurpleAccent,
            ),
            child: Center(child: Text('Book Now', style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Crowne Plaza kochi',
            style: TextStyle(color: Colors.black, fontSize: 18),),
          SizedBox(height: 12,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "           Crowne Plaza Kochi is a luxurious haven nestled in the heart of Kerala, India."
                      "  This upscale hotel combines modern elegance with the rich cultural heritage of the region, "
                      "  offering guests an unforgettable experience. With its stunning waterfront location overlooking "
                      "  the serene backwaters and lush greenery, it provides a tranquil escape from the bustling city life."
                      "  Crowne Plaza Kochi boasts well-appointed rooms and suites, each designed for ultimate comfort and"
                      "  relaxation. The hotel's culinary offerings are a gastronomic delight, featuring a range of dining"
                      "  options that showcase the diverse flavors of Kerala and international cuisine. Its state-of-the-art"
                      "  facilities, including a fitness center, spa, and an inviting swimming pool, ensure that guests can "
                      "  unwind and rejuvenate. Whether you're traveling for business or leisure, Crowne Plaza Kochi promises"
                      " an exquisite blend of luxury, culture, and hospitality that will leave a lasting impression.",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
