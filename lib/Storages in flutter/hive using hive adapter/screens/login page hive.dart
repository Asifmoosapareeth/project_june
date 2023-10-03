import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_june/Storages%20in%20flutter/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:project_june/Storages%20in%20flutter/hive%20using%20hive%20adapter/screens/home%20hive.dart';
import 'package:project_june/Storages%20in%20flutter/hive%20using%20hive%20adapter/screens/register%20page%20hive.dart';

import '../models/User_Model.dart';
void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: Login_hive(),));
}

class Login_hive extends StatelessWidget {
  final email= TextEditingController();
  final pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive Login'),),
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
               controller: email,
                decoration: InputDecoration(
                  hintText: 'username',
                  border: OutlineInputBorder()
                ),
                ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: () async {
            final users = await HiveDb.instance.getUser();
            checkUserExist(context,users);
          },
              child: Text('Login')),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterHive()));
          },
              child: Text('Not a user ? Register Here !!!!'))


        ],
      ),
    );
  }

  Future<void> checkUserExist(BuildContext context,List<User> users) async {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userFound = false;
    if(lemail!= ""&& lpass != ""){
      await Future.forEach(users, (singleUser) {
        if(lemail==singleUser.email && lpass==singleUser.password){
          userFound=true;
        }else{
          userFound=false;
        }
      });
      if(userFound==true){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HiveHome(email:lemail)));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed, User Not Found")));
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Field must not be empty")));
    }

  }
}
