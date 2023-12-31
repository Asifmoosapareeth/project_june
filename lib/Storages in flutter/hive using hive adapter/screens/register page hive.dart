import 'dart:js';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project_june/Storages%20in%20flutter/hive%20using%20hive%20adapter/screens/login%20page%20hive.dart';
import '../database/hivedb.dart';
import '../models/User_Model.dart';

class RegisterHive extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Registration"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'UserName', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'PassWord'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                //fetch all the users from db
                final userlist = await HiveDb.instance.getUser();
                validateSignUp(context, userlist);
              },
              child: const Text("Login")),
        ],
      ),
    );
  }
  void validateSignUp(BuildContext context, List<User> userlist) async {
    final uname = email.text.trim();
    final pwd = pass.text.trim();
    bool userFound = false;
    final validateEmail = EmailValidator.validate(uname);
    if(uname != "" && pwd != "") {
      if (validateEmail == true) {
        await Future.forEach(userlist, (singleUser) {
          if (singleUser.email == uname) {
            userFound = true;
          } else {
            userFound = false;
          }
        });
        if (userFound == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("User Already Exist!!")));
        } else {
          final validatePassword = validatePassWord(context, pwd);
          if (validatePassword == true) {
            final user = User(email: uname, password: pwd);
            await HiveDb.instance.addUser(user); // user added to hive db
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login_hive()));
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("User Registration Success")));
          }
        }
      } else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Enter a Valid Email!!!")));
      }
    }
    else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Field Must Not be Empty!!!")));
    }
  }

  bool validatePassWord(BuildContext context, String pwd) {
    if (pwd.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Password length should be > 6 !!")));
      return false;
    } else {
      return true;
    }
  }
}