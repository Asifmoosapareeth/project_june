import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MusicPlayer()));
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  int index = 0;
  var imagee = [
    'https://images.unsplash.com/photo-1688387969153-39f12756809b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80',
    'https://images.unsplash.com/photo-1492284163710-4eef97892705?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1511367734837-f2956f0d8020?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2005&q=80',
    'https://images.unsplash.com/photo-1519640350407-953bc0614f4c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1484704849700-f032a568e944?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1489641493513-ba4ee84ccea9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Playlist',
            style: TextStyle(
              fontSize: 28,
              color: Colors.pinkAccent.shade200,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.grey,
        currentIndex: index,
        onTap: (tappedindex) {
          setState(() {
            index = tappedindex;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
              selectedColor: Colors.pinkAccent),
          SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text('search'),
              selectedColor: Colors.pinkAccent),
          SalomonBottomBarItem(
              icon: Icon(Icons.playlist_play_sharp),
              title: Text('playlist'),
              selectedColor: Colors.pinkAccent),
          SalomonBottomBarItem(
              icon: Icon(Icons.menu),
              title: Text('Menu'),
              selectedColor: Colors.pinkAccent),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.pinkAccent.shade200),
                  fillColor: Colors.grey,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.pinkAccent.shade200,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10),
                children: List.generate(
                    6,
                        (index) => Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(imagee[index]),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}
