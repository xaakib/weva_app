import 'package:flutter/material.dart';

class RecoermendedCategori extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String rating;

  const RecoermendedCategori({Key key, this.imageUrl, this.text, this.rating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                  imageUrl,
                ),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.star, size: 15, color: Colors.green),
                Text(rating),
              ],
            )
          ],
        )
      ],
    );
  }
}
