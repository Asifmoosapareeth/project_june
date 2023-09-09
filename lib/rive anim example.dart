import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
void main(){
  runApp(MaterialApp(home: RiveEx(),));
}
class RiveEx extends StatelessWidget {
  const RiveEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.asset('assets/animation/5492-10843-geometry-madness.riv',
          fit: BoxFit.contain,),
      ),
    );
  }
}
