import 'package:flutter/material.dart';
import 'package:project_june/Storages%20in%20flutter/shard%20preferences/simple%20login%20using%20shared%20pref/shared%20home.dart';
import 'package:project_june/Storages%20in%20flutter/shard%20preferences/simple%20login%20using%20shared%20pref/shared-login.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: Shared_Register(),));
}
class Shared_Register extends StatefulWidget {
  const Shared_Register({super.key});

  @override
  State<Shared_Register> createState() => _Shared_RegisterState();
}

class _Shared_RegisterState extends State<Shared_Register> {
  final name=TextEditingController();
  final uname=TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register page'),),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'name'
                ),
                controller: name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'email'
                ),
                controller: uname,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password'
                ),
                controller: pwd,
              ),
            ),
      ElevatedButton(onPressed: () async{
        String username= name.text;
        String email=uname.text;
        String password= pwd.text;
        preferences = await SharedPreferences.getInstance();
        preferences.setString('name', username);
        preferences.setString('uname', email);
        preferences.setString('pswrd', password);
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginShared()));
      }, child: Text('Register'))

          ],
        ),
      ),
    );
  }

}
