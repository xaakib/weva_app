import 'package:flutter/material.dart';

class RecoermendedCategori extends StatelessWidget {
  const RecoermendedCategori({
    Key key,
  }) : super(key: key);

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
                image:
                    NetworkImage('https://googleflutter.com/sample_image.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Text(
              "Salon Service",
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
                Text("4.8")
              ],
            )
          ],
        )
      ],
    );
  }
}
