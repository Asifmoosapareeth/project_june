import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: BottomNavBar(),));
}

class BottomNavBar extends StatefulWidget {


  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.purple,
          selectedItemColor: Colors.green,
          currentIndex: index,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },

          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: 'account'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: 'create'),
      ]),
    );
  }
}
