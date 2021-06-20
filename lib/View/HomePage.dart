import 'package:bigcart/Components/AppBar.dart';
import 'package:bigcart/Components/HomeBody.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar(),
      body: HomeBody(),
    );
  }
}
