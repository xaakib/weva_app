import 'package:flutter/material.dart';

class NavHomeScreen extends StatefulWidget {
  @override
  _NavHomeScreenState createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  int _currentIndex = 0;
  List<String> categoris = [
    "Home",
    "Salon",
    "Health",
    "Fitness",
    "Beauty",
    "Physical"
  ];

  List listOfPage = [];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
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
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 3,
                        width: 40,
                        color: selectedIndex == index
                            ? Colors.red
                            : Colors.transparent,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        categoris[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        height: 3,
                        width: 40,
                        color: selectedIndex == index
                            ? Colors.red
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
