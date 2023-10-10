import 'package:flutter/material.dart';
import 'package:project_june/firebase_example/email_pass_authen/login_fir.dart';

import 'firebase_db.dart';

class Home_fire extends StatelessWidget {
  const Home_fire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseHelper().signOut().then((result) =>
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login_fire())));
        }, child: Text('sign out')),
      ),
    );
  }
}
