import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'Listvieww/ListView2.dart';
import 'Listvieww/listview builder.dart';
import 'Listvieww/new.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Tab_ex(),));
}
class Tab_ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.teal,
            title: Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.bold),),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              Icon(Icons.camera_alt_outlined),
              PopupMenuButton(itemBuilder: (context){
                return[
                  PopupMenuItem(child: Text('settings'))
                ];
              })
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.zero,
                tabs: [
              SizedBox(width: MediaQuery.of(context).size.width*.1,
                  child: FaIcon(FontAwesomeIcons.peopleGroup)),
              SizedBox( width: MediaQuery.of(context).size.width*.3,
                  child: Text('chat')),
              SizedBox(width: MediaQuery.of(context).size.width*.3,
                  child: Text('status')),
              SizedBox(width: MediaQuery.of(context).size.width*.3,
                  child: Text('call'))
            ]),
          ),
          body: TabBarView(
              children: [
                Listview_with_builder(),
                ListView2(),
                WhatsAppStatusUI(),
              ]),
        ));
  }
}
