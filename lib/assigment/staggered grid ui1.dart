import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main (){
  runApp(MaterialApp(home: Staggred_grid_ui(),));
}
class Staggred_grid_ui extends StatelessWidget {
  const Staggred_grid_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('staggred grid ui'),),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 2,
              child: Container(
                  color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/northern_light.jpg',fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 10,),
                  Text('Northern Lights',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('20 August 2023'),
                  Text('saul goodsman')
                ],
              ),
              )
          ),
          StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 4,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/Building.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Text('5 june 2006'),
                    SizedBox(height: 10,),
                    Text('Ragner lothbrok')
                  ],
                ),
              )
          ),
          StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 4,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/himalayam.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Text('Himalaya',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('10/05/2018'),
                    Text('jessica jones')
                  ],
                ),
              )
          ),
          StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/tea.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Text('Tea',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('13/01/2012'),
                    Text('Arya Stark')
                  ],
                ),
              )
          ),
          StaggeredGridTile.count(
              crossAxisCellCount:2 ,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/Pug_dog.webp',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Text('Dog',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('29/9/2009'),
                    Text('Tyler durden')
                  ],
                ),
              )
          ),
        ],
        ),
      ),

    );
  }
}
