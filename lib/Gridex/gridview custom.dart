import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridviewCustom(),
  ));}

class GridviewCustom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hii'),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildListDelegate(
              List.generate(12, (index) => Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/bag.jpg'))
                        ),

                      ),
                      Text('Item 1',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Text('\$ 200 ', style: TextStyle(color:Colors.black ),)
                    ],
                  ),
                ),
              )))),
    );
  }
}
