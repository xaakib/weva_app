import 'package:flutter/material.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        child: Text("HomeProduct"),
      ),
    );
  }
}
