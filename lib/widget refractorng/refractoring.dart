import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Refractoring3(),));
}

class Refractoring3 extends StatelessWidget {
  const Refractoring3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('refractoring'),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
        return MyRefractoringWidget(rimage: Image.asset('assets/images/messi.jpg'),
          label: Text('Messi',style: GoogleFonts.damion(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
          onClick: (){},
          ricon: Icon(Icons.sports_soccer,size: 30,),
          bgcolor: Colors.yellow,
        );
    }),
    );
  }
}
class MyRefractoringWidget extends StatelessWidget {
  Color? bgcolor;
  Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;
  MyRefractoringWidget({this.bgcolor,required this.rimage,this.label,this.onClick,this.ricon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListTile(
        title:label,
        leading: rimage,
        onTap: onClick,
        trailing: ricon,
      ),
    ],
  ),

    );
  }
}

