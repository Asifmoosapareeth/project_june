import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview_Seperated(),));
}

class Listview_Seperated extends StatelessWidget {
List month=['january','february','march','april','may','june','july','august','septemper', 'october','november','december'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview separated'),),
      body: ListView.separated(
          itemBuilder: (context,index){
            return ListTile(
              title: Text(month[index ]),
            );
          },
          separatorBuilder:(context,index){
            if(index%4==0) {
              return Container(
                height: 30,
                child: Card(
                  color: Colors.red,
                  child: Center(child: Text('Advertisement')),

                ),
              );
            }else{
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
