import 'package:flutter/material.dart';

class FlightCategori extends StatelessWidget {
  final String text;
  final String imageIcon;
  final Color color;

  const FlightCategori({Key key, this.text, this.imageIcon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                imageIcon,
                height: 70,
                width: 70,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
