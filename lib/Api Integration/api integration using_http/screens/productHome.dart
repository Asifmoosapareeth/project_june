import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_june/passing%20data%20between%20screens/using%20navigator/homepage.dart';

import '../controller/productcontroller.dart';
import 'Home/widgets/productTile.dart';

void main(){
  runApp(MaterialApp(home: ProductHome(),));
}
class ProductHome extends StatelessWidget {
  final ProductController productControler = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text('Products'),),
      body: SizedBox(child: Obx((){
        if(productControler.isLoading.value){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else{
          return GridView.builder(
              itemCount: productControler.productList.length,
              gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index){
            return ProductTile(productControler.productList[index]);
              });
        }
      }),),
    );
  }
}
