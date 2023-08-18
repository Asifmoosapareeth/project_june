import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}


class ExitAppAlert extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future<bool>showAlert()async{
      return await showDialog(
          context: context,
          builder: (context){
        return AlertDialog(
          title: Text('exit'),
          content: Text('dp you really want to exit'),
          actions: [
            ElevatedButton(onPressed: (){
             Navigator.of(context).pop(true);
            }, child: Text('yes')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text('No')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text('cancel')),
          ],
        );
          });
    }
    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(appBar: AppBar(title: Text('hello world'),),
          body: Center(child: Text('hi all'),),
        ),
      );
  }

}
