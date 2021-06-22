import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Cart_counder.dart';

class CounterwithFavBtn extends StatelessWidget {
  const CounterwithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 34,
          width: 34,
          child: SvgPicture.asset(
            "assets/icons/heart.svg",
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
