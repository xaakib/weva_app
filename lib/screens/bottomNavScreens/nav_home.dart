import 'package:flutter/material.dart';

class NavHomeScreen extends StatefulWidget {
  @override
  _NavHomeScreenState createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  List<String> categoris = [
    "Home",
    "Salon",
    "Health",
    "Fitness",
    "Beauty",
    "Physical"
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: categoris.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoris[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.grey),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7),
                      height: 2,
                      width: 30,
                      color: selectedIndex == index
                          ? Colors.black
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
