import 'package:bigcart/Constants/Color_and_padding.dart';
import 'package:bigcart/Models/ProductModel.dart';
import 'package:flutter/material.dart';
import 'Add_toCart.dart';
import 'ColorAndSizeComponent.dart';
import 'CounterwithFavBtn.dart';
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
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                      bottom: kDefaultPaddin),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSizeComponent(product: product),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPaddin),
                        child: Text(
                          product.description,
                          style: TextStyle(height: 1.5, letterSpacing: 1.0),
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPaddin,
                      ),
                      CounterwithFavBtn(),
                      SizedBox(
                        height: kDefaultPaddin * 2,
                      ),
                      AddToCart(
                        product: product,
                      ),
                    ],
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
