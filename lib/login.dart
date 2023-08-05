
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Homepage.dart';

class LoginPage extends StatelessWidget {
  String uname = "admin";
  String pwd = "abc123";
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {

return Scaffold(
  appBar: AppBar(title: Text('Instagram',style:TextStyle(fontSize: 35,color: Colors.black),),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

         Padding(
          padding:  EdgeInsets.all(20.0),
          child: TextField(
            controller: usercontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.people),
              hintText: 'username',
              helperText: 'enter your email',
              labelText: 'username'
            ),
          ),
        ),

         Padding(
          padding: EdgeInsets.only(left: 20, right: 20,
              bottom: 50),
          child: TextField(
            controller: passcontroller,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.visibility_off_sharp),
                hintText: "Password",),
          ),
        ),

        ElevatedButton(onPressed: (){
          if(uname==usercontroller.text && pwd==passcontroller.text) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Homepage()));
            usercontroller.text="";
            passcontroller.text="";
          }else{
            // ScaffoldMessenger.of(context).showSnackBar(
            // SnackBar(content: Text("invalid user name or password"),
            // backgroundColor: Colors.blue,));
            Fluttertoast.showToast(
                msg: "Invalid username or password",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
        }, child: Text('login'))
      ],
    ),
  )


);
  }
}
