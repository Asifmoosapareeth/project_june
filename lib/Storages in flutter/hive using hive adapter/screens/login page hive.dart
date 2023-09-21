import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_june/Storages%20in%20flutter/hive%20using%20hive%20adapter/screens/register%20page%20hive.dart';

import '../models/User_Model.dart';
void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter();
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
          ElevatedButton(onPressed: (){},
              child: Text('Login')),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register_Hive()));
          },
              child: Text('Not a user ? Register Here !!!!'))


        ],
      ),
    );
  }
}
