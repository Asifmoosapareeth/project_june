import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_june/firebase_example/email_pass_authen/firebase_db.dart';
import 'package:project_june/firebase_example/email_pass_authen/reg_fir.dart';

import 'home_fir.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB72b4fFPaPHbqijCPzc4Eo58HD8etkbJ4",
      projectId: "stellar-display-398208",
      appId: '1:792857541724:android:448991ff3571f9ce9cfa99',
      messagingSenderId: '',
    ),);
  //currently login user kittaan
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user==null ? Login_fire():Home_fire(),));
}
class Login_fire extends StatefulWidget {
  const Login_fire({super.key});

  @override
  State<Login_fire> createState() => _Login_fireState();
}

class _Login_fireState extends State<Login_fire> {
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Log in'),),
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

            FirebaseHelper()
                .login(email:email,password:pass,)
                .then((result){
              if(result==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_fire()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          },
              child: Text('Login')),
          SizedBox(height: 15,),
          TextButton(onPressed: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Registration_fire()));
          },
              child: Text('Register'))
        ],
      ),
    );
  }
}
