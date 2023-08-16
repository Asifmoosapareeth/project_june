import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: CSlider(),));
}
class CSlider extends StatelessWidget {
  const CSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Image.network('https://images.unsplash.com/photo-1691862337281-24532802bad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
            Image.network('https://images.unsplash.com/photo-1691683018612-10abe7863978?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
            Image.network('https://images.unsplash.com/photo-1691319843283-24e1d9eeacab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1333&q=80'),
            Image.network('https://images.unsplash.com/photo-1691699477466-fcc2e14c1f0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80'),
          ],
          options: CarouselOptions(
            initialPage: 0,
            height: 500,
            aspectRatio: 16/9,
            viewportFraction: .5,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 1),
            autoPlayCurve: Curves.easeInOutQuad,
            enlargeCenterPage: true,
            enlargeFactor: .8,
            scrollDirection: Axis.horizontal,



          )),
    );
  }
}
