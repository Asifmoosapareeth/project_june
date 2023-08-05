import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
void main() {
  runApp(MaterialApp(home: Contact(),));
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple contactList'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('John Juda'),
            subtitle: Text("656864316641616"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.blue, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('Asif Moosa'),
            subtitle: Text("7559815386"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.purple, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),  ListTile(
            title: Text('mamooty'),
            subtitle: Text("678794623"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.deepOrange, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('Mohanlal'),
            subtitle: Text("8316641616"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('jabaan'),
            subtitle: Text("6568643166"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.green, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('dicaprio'),
            subtitle: Text("12546641616"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade500, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('Virat kohli'),
            subtitle: Text("2846466516"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade900, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),
          ListTile(
            title: Text('Sunil chetri'),
            subtitle: Text("652664641616"),
            trailing: Icon(Icons.arrow_forward_ios),
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade200, // Set the background color of the CircleAvatar
              child: Icon(
                Icons.person,
                color: Colors.white, // Set the color of the person icon
              ),
            ),
          ),

        ],
      ),
    );
  }
}
