import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june/assigment/whatsp/Community%20whtsp.dart';
import 'package:project_june/assigment/whatsp/call%20whtsp.dart';
import 'package:project_june/assigment/whatsp/status%20whtsp.dart';

import 'chat whatsp.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Whatsapp_fullUI(),));
}
class Whatsapp_fullUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.teal,
            title: Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.bold),),
            actions: [

              Icon(Icons.search),
              SizedBox(width: 25,),
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 20,),

              PopupMenuButton(itemBuilder: (context){
                return[
                  PopupMenuItem(child: Text('New Group')),
                  PopupMenuItem(child: Text('New Broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Stared messages')),
                  PopupMenuItem(child: Text('Payment')),
                  PopupMenuItem(child: Text('Settings'))
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
                WhatsAppcommunity(),
                Chat_Whatsp(),
                WhatsappStatus_UI(),
                WhatspCalls()



              ]),
          floatingActionButton: FloatingActionButton(onPressed: (){},
child:Icon(Icons.message,color: Colors.white,),
            backgroundColor: Colors.teal,
          ),
        ));
  }
}
