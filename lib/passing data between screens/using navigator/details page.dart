import 'package:flutter/material.dart';
import 'package:project_june/passing%20data%20between%20screens/using%20navigator/dummy%20data.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //to collect value form previous route/page
    final produceId = ModalRoute.of(context)?.settings.arguments;
   final productFromList = products.firstWhere((element) => element['id']==produceId);
    return Scaffold(
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 200,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: NetworkImage(productFromList['image1']))
                 ),
               ),
               Text(
                 productFromList['Description'],
                 style: TextStyle(fontSize: 20),
               ),
               Text('${productFromList['price']}',
              style: TextStyle(fontSize: 25),),

               Text('${productFromList['rating']}',
                 style: TextStyle(fontSize: 25),)
             ],
           ),
         ),
    );
  }
}
