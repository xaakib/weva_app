import 'package:flutter/material.dart';

class RecoermendedCategori extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String subText;
  final String rating;

  const RecoermendedCategori(
      {Key key, this.subText, this.imageUrl, this.text, this.rating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1595060939400-9c5bd715601b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDl8fG5ldHdvcmt8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Salon Service",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 13,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 12, color: Colors.green),
                  Text("8.9")
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subText,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
