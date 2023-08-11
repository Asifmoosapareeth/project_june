import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawyer_ex(),));
}
class Drawyer_ex extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my profile'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/images/senary.jpg'))
              ),
              accountName: Text('Asif moosa'),
              accountEmail: Text('asifmoosa@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ronaldo.webp',)
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/nolan.jpg'),),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('about'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('help'),
            ),

          ],
        ),
      ),
    );
  }
}
