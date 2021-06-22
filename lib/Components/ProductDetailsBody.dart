import 'package:bigcart/Models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'ProductTitlewithImage.dart';

class ProductDetailBody extends StatelessWidget {
  final Product product;
  const ProductDetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                ProductTitlewithImage(product: product, size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
