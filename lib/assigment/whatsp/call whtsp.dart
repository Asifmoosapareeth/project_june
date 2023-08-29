import 'package:flutter/material.dart';

class WhatspCalls extends StatelessWidget {

  var cname=["Aasi","Kannan","Rahu","Banda","Sanu","Angel","Meenu","Aanmariyam"];
  var ctime=["Yesterday, 7:50 AM","August 24, 10:20 PM","August 12, 7:14 PM","August 6, 10:23 AM","July 30, 8:36 PM","July 28, 6:56 PM",
    "July 25, 11:23 AM","July 21, 10:53 AM",];


  var cimage=["https://images.unsplash.com/photo-1692555052035-1a3116e30ba5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80",
    "https://images.unsplash.com/photo-1693031262676-05efcfb6a3f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1693000911292-e0902cefb402?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://plus.unsplash.com/premium_photo-1691622500412-151f9c315b4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1682685797857-97de838c192e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://plus.unsplash.com/premium_photo-1675793714962-a2413250c490?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"
        "https://images.unsplash.com/photo-1693031262676-05efcfb6a3f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
    "https://images.unsplash.com/photo-1682685797857-97de838c192e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",

  ];

  var cicons=[
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:
          List.generate(7, (index) => Card(
            child: ListTile(
              title: Text(cname[index]),
              subtitle: Text(ctime[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(cimage[index]),
              ),
              trailing: Icon(cicons[index],color: Colors.teal,),
            ),
          ))),

      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,
        onPressed: (){},

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        mini: true,
        elevation: 2.0,
        child: Icon(Icons.add_call),),
    );
  }
}