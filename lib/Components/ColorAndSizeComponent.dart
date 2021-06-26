import 'package:bigcart/Constants/Color_and_padding.dart';
import 'package:bigcart/Models/ProductModel.dart';
import 'package:flutter/material.dart';

class ColorAndSizeComponent extends StatelessWidget {
  const ColorAndSizeComponent({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    isSelected: true,
                    dotcolor: product.color,
                  ),
                  ColorDot(
                    isSelected: false,
                    dotcolor: Color(0xFFD3A984),
                  ),
                  ColorDot(
                    isSelected: false,
                    dotcolor: Color(0xFFFB7883),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "size\n"),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color dotcolor;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.dotcolor,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? dotcolor : Colors.transparent,
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: dotcolor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
