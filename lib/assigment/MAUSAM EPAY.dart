import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Mausam_ui(),
  ));
}

class Mausam_ui extends StatelessWidget {
  List names=['My Account','Load E-seva','payment','Fund Transfer','Scedule payment','Scan to pay'];
  List<IconData> iconss = [Icons.account_circle, FontAwesomeIcons.e, Icons.send_to_mobile,
    FontAwesomeIcons.peopleGroup, Icons.timelapse_rounded, Icons.qr_code_scanner];
  List num=['10,000','2000','5866','8000','15000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome MAUSAM'),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.qr_code_scanner)],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Stack(
              children: [
                Container(height: 185),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: SizedBox(
                      height: 160,
                      child: Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            CircleAvatar(radius: 40,
                              backgroundImage:AssetImage('assets/images/fincher.jpg',),
                            ),
                            SizedBox(width: 25,),
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("David Fincher",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('NPR. 18,45,276.45',style: TextStyle(color: Colors.red),),
                                Text('1461264663457',style: TextStyle(fontWeight: FontWeight.bold),),
                                
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
           Row(
             children: [
               SizedBox(width: 15,),
               Icon(Icons.local_atm_outlined,color: Colors.red,),
               SizedBox(width: 10,),
               Text('WOULD YOU LIKE TO ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
             ],
           ),
          ]
              )
          ),
         SliverPadding(
           padding: const EdgeInsets.only(top: 10,bottom: 10),
           sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Containergridd(lname: names[index], myicon: iconss[index]);
                },childCount: 6),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10
                ),
              ),
         ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
                  sliver: SliverList(delegate: SliverChildListDelegate([
              Row(
                children: [
                  SizedBox(width: 15,),
                  Icon(Icons.local_atm_outlined,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text('LAST TRANSACTIONS ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              )
            ])),
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Cardlist(dname: num[index],);
          },childCount: 5
          ))
        ],
      ),
    );
  }
}
class Containergridd extends StatelessWidget {
  String lname;
  IconData myicon;

  Containergridd({super.key,required this.lname,required this.myicon});

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,width: 40,color: Colors.white70,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(myicon,color: Colors.red,size: 17,),
          SizedBox(height: 15,),
          Text(lname,style: TextStyle(color: Colors.black,fontSize: 17),),

        ],
      ),
    );
  }
}
class Cardlist extends StatelessWidget {

  String dname;
 Cardlist({Key? key,required this.dname});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 10,
              color: Colors.red,
            ),
            SizedBox(width: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CWDR/',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('976425/5655616897',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('3-09-2023',style: TextStyle(fontSize: 10),),
              ],
            ),
            SizedBox(width: 150,),
            Text('NPR.$dname',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
          ],
        ),
      ),
    );
  }
}



