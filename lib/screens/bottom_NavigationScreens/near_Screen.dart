import 'package:flutter/material.dart';

class NearScreen extends StatefulWidget {
  @override
  _NearScreenState createState() => _NearScreenState();
}

class _NearScreenState extends State<NearScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "NearScreen",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
