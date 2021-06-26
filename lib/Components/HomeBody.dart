import 'package:bigcart/Components/ProductCard.dart';
import 'package:bigcart/Constants/Color_and_padding.dart';
import 'package:bigcart/Models/ProductModel.dart';
import 'package:bigcart/View/ProductDetailPage.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin,
          ),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.70,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin),
              itemBuilder: (context, index) => ProductCard(
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                                  product: products[index],
                                ))),
                    product: products[index],
                  )),
        )),
      ],
    );
  }
}
