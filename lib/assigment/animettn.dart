import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LotAnim(),));
}

class LotAnim extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie'),
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/animation/box.json',width: 150,height: 200),
          Row(
            children: [
              Lottie.network('https://lottie.host/baf54065-7a77-45e6-bdb3-d0e8aa3a74c7/wAmG8Wt1Dc.json',width: 190,height: 350),
              Lottie.network('https://lottie.host/7b4ebbc3-03d3-4be1-8cd5-8f4d73e3deef/omaa3INiiO.json',width: 200,height: 200),


            ],
          )
          ,Center(child: Text('Go Corona',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)),
          Center(
            child: Row(
              children: [
                Lottie.network('https://lottie.host/886ee34b-034d-4cbb-8ba9-ebd7e6a104be/dMQEWPQbe8.json',width: 300,height: 300),
                Lottie.network('https://lottie.host/b10c51e7-e816-431d-9edc-25abca209c93/Hjq9qW96px.json',width: 300,height: 300),
                Lottie.network('https://lottie.host/ecbb5a65-1985-4e42-b746-17e610ed9401/2sWc4m6xo5.json',width: 200,height: 150)
              ],
            ),
          ),



        ],
      ),
    );
  }
}
