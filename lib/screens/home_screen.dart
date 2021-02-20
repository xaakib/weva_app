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
              length: 5,

              //// this is for appbar//
              child: Scaffold(
                  drawer: Drawer(),
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    elevation: 0,

                    // backgroundColor: Color(0xff109618),
                    backgroundColor: Colors.white,

                    title: Image.asset("assets/images/wevaicon.png",
                        fit: BoxFit.cover, height: 50, width: 70),

                    centerTitle: true,
                    leading: Icon(Icons.menu, color: Colors.black),
                    actions: [
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                    ],

                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.black,
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
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Salon',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Health',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'BOOK',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'BOOK',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
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
                      HealthScreen(),
                      HealthScreen(),
                    ],
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.black12,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.favorite, color: Colors.black, size: 30),
          Icon(Icons.add_alert_outlined, color: Colors.black, size: 30),
          Icon(Icons.hotel_outlined, color: Colors.black, size: 30),
          Icon(Icons.inbox_outlined, color: Colors.black, size: 30),
          Icon(Icons.menu_open_outlined, color: Colors.black, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
