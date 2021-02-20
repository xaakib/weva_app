import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weva_app/screens/pages/health_screen.dart';
import 'package:weva_app/screens/pages/home_product.dart';
import 'package:weva_app/screens/pages/salon_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: DefaultTabController(
              length: 4,
              child: Scaffold(
                  appBar: AppBar(
                    // backgroundColor: Color(0xff109618),
                    backgroundColor: Colors.blue,
                    title: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: _GooglePlayAppBar(),
                    ),
                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicatorWeight: 6.0,
                      onTap: (index) {
                        setState(() {});
                      },
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Salon',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Health',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'BOOK',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      HomeProduct(),
                      SalonScreen(),
                      HealthScreen(),
                      HealthScreen(), //4CAF50
                    ],
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.blue,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.home_outlined, color: Colors.yellow, size: 30),
          Icon(Icons.add_alert_outlined, color: Colors.yellow, size: 30),
          Icon(Icons.hotel_outlined, color: Colors.yellow, size: 30),
          Icon(Icons.inbox_outlined, color: Colors.yellow, size: 30),
          Icon(Icons.menu_open_outlined, color: Colors.yellow, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

Widget _GooglePlayAppBar() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          // ignore: missing_required_param
          child: IconButton(
            icon: Icon(FontAwesomeIcons.bars),
          ),
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          child: IconButton(
              icon: Icon(
                FontAwesomeIcons.microphone,
                color: Colors.blueGrey,
              ),
              onPressed: null),
        ),
      ],
    ),
  );
}
