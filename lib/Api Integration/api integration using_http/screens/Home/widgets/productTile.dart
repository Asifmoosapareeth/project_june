import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_june/Api%20Integration/api%20integration%20using_http/model/productModel.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
 ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 180,width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5))),
                child: CachedNetworkImage(imageUrl: product.image!,
                fit: BoxFit.cover,),
          ),
          SizedBox(height: 10,),
          Text(product.title!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('${product.price!}\$',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
