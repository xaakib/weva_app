import 'package:flutter/material.dart';

class NavNotificationScreen extends StatefulWidget {
  @override
  _NavNotificationScreenState createState() => _NavNotificationScreenState();
}

class _NavNotificationScreenState extends State<NavNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
