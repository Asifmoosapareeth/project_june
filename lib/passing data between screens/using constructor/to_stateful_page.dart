import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  var name;

  var Location;

  var phone;

  StatefulPage({super.key,required this.name, required this.Location, this.phone});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(widget.name),
      Text(widget.Location),
      Text('${widget.phone}')
    ],
  ),
),
    );
  }
}
