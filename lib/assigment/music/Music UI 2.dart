import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MusicUI2()));
}

class MusicUI2 extends StatefulWidget {
  const MusicUI2({Key? key}) : super(key: key);

  @override
  _MusicUI2State createState() => _MusicUI2State();
}

class _MusicUI2State extends State<MusicUI2> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Musify',
            style: GoogleFonts.albertSans(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent.shade400,
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.pinkAccent,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.music_note_list),label: 'playlist'),
            BottomNavigationBarItem(icon: Icon(Icons.more_vert),label: 'more'),
          ]),

      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Suggested Playlist',
                style: GoogleFonts.albertSans(
                  color: Colors.pinkAccent.shade400,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Image.asset('assets/images/playlst1.webp'),
              Image.asset('assets/images/playlist2.jpg'),
              Image.asset('assets/images/playlist3.webp'),
              Image.asset('assets/images/playlst1.webp'),
              Image.asset('assets/images/playlist3.webp'),
            ],
            options: CarouselOptions(
              initialPage: 0,
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: .5,
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.easeInOutQuad,
              enlargeCenterPage: true,
              enlargeFactor: .4,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text('Recommended for you',
                  style: GoogleFonts.jost(color: Colors.pinkAccent, fontSize: 18)),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Column(
                children: [
                  PlaylistCard(
                    myimage: NetworkImage(
                        'https://images.unsplash.com/photo-1587204714992-2c93329aaa3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1938&q=80'),
                    Lname: 'Taylor Swift',
                  ),
                  PlaylistCard(myimage:AssetImage('assets/images/arjit singh.jpg'), Lname: 'Arjith Singh'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: AssetImage('assets/images/zimmerr.jpg'), Lname: 'Hans Zimmer'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: AssetImage('assets/images/sushin.jpg'), Lname: 'Sushin shyam'),
                  SizedBox(height: 10,),
                  PlaylistCard(myimage: AssetImage('assets/images/anirudh.jpg'), Lname: 'Anirudh ravi')
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  final ImageProvider myimage;
  final String Lname;

  PlaylistCard({Key? key, required this.myimage, required this.Lname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 80,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: myimage),
              )),
          SizedBox(width: 10,),
          Text(
            Lname,
            style: GoogleFonts.kanit(color: Colors.pinkAccent, fontSize: 18),
          ),

          SizedBox(width: 240),
          Icon(
            CupertinoIcons.star,
            color: Colors.pinkAccent,
          ),
          SizedBox(width: 10),
          Icon(
            CupertinoIcons.down_arrow,
            color: Colors.pinkAccent,
          )
        ],
      ),
    );
  }
}
