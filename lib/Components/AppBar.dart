import 'package:bigcart/Constants/Color_and_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar Appbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
