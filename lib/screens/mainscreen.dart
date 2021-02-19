import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        child: Text("Select Your Language"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (conetx) {
                return Dialog();
              });
        },
      )),
    );
  }
}
