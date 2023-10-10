import 'package:flutter/material.dart';
import 'package:project_june/firebase_example/email_pass_authen/firebase_db.dart';
import 'package:project_june/firebase_example/email_pass_authen/login_fir.dart';
class Registration_fire extends StatefulWidget {
  const Registration_fire({super.key});

  @override
  State<Registration_fire> createState() => _Registration_fireState();
}

class _Registration_fireState extends State<Registration_fire> {
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text('Registration'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'username'),
              controller: username_controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'password'),
              controller: password_controller,
            ),
          ),
          ElevatedButton(onPressed: (){
            String email=username_controller.text.trim();
            String pass=password_controller.text.trim();
            FirebaseHelper().register(useremail:email,password:pass,).then((result){
              if(result==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_fire()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          },
              child: Text('Register here'))
        ],
      ),
    );
  }
}
