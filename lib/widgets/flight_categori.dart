import 'package:flutter/material.dart';

class FlightCategori extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;

  const FlightCategori({Key key, this.text, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: icon,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
