import 'package:flutter/material.dart';
import 'package:project_june/Storages%20in%20flutter/shard%20preferences/simple%20login%20using%20shared%20pref/shared-login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  late SharedPreferences preferences;
  late String username;
  @override
  void initState() {
    // TODO: implement initState
    fetchdata();
    super.initState();
  }


  void fetchdata() async{
    preferences= await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString('uname')!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('welcome $username'),
      SizedBox(height: 10,),
      ElevatedButton(onPressed: (){
        preferences.setBool('newuser', true);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginShared()));
      },
          child: Text('Log out'))

    ],
  ),
),
    );
  }

}

