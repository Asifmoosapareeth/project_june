import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_june/login.dart';
import 'package:project_june/stateful%20login%20with%20validation.dart';

class Register extends StatefulWidget {


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool passvisibility1=true;
  String? password;
  bool passvisibility2=true;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page"),
      ),

      body: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset("assets/icons/metainsta.png",height: 150,width: 150),
              const Text("Sign Up",style: TextStyle(fontSize: 20),),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(CupertinoIcons.person_2),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Mobile",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Userame",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    validator: (username){
                      if(username!.isEmpty || !username.contains("@")){
                        return "Fields are empty or Invalid";
                      }else{
                        return null;
                      }
                    }
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: passvisibility1,
                  decoration: InputDecoration(

                      prefixIcon: Icon(CupertinoIcons.eye_slash),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(passvisibility1==true){
                            passvisibility1=false;
                          }else{
                            passvisibility1=true;
                          }

                        });
                      },
                          icon: Icon(passvisibility1==true
                              ?Icons.visibility_off_sharp
                              :Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                  validator: (pass){
                    password=pass;
                    if(pass!.isEmpty || pass.length<6){
                      return "Fields are empty or Password length must be greater than 6";
                    }else{
                      return null;
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscuringCharacter: '*',
                  obscureText: passvisibility2,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(passvisibility2==true){
                            passvisibility2=false;
                          }else{
                            passvisibility2=true;
                          }

                        });
                      },
                          icon: Icon(passvisibility2==true
                              ?Icons.visibility_off_sharp
                              :Icons.visibility)),
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                  validator: (cpass){
                    if(cpass!.isEmpty || cpass !=password){
                      return "Fields are empty or Password does not match";
                    }else{
                      return null;
                    }
                  },
                ),
              ),

              ElevatedButton(onPressed: (){
                final valid = formkey.currentState!.validate();
              if (valid) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Login2()));
              } else {
                Fluttertoast.showToast(
                    msg: "Invalid Username or Password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    // timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }

              }, child: const Text("REGISTER HERE")),

              TextButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=>LoginPage()));
              }, child: const Text("Already have an account ? Login"))
            ],
          )

      ),
    );
  }
}