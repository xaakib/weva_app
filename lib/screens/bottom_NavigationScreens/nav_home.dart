import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weva_app/screens/tab_screens/home_page.dart';
import 'package:weva_app/screens/tab_screens/Aboutus.dart';
import 'package:weva_app/screens/tab_screens/BillInfo.dart';
import 'package:weva_app/screens/tab_screens/cardfile.dart';
import 'package:weva_app/screens/tab_screens/Nearby.dart';
import 'package:weva_app/screens/tab_screens/Notification.dart';
import 'package:weva_app/screens/tab_screens/health_screen.dart';
import 'package:weva_app/screens/tab_screens/ServicePageOne.dart';
import 'package:weva_app/screens/tab_screens/ServiceProviderPage.dart';
import 'package:weva_app/screens/tab_screens/pay.dart';
import 'package:weva_app/screens/tab_screens/Reservation.dart';
import 'package:weva_app/screens/tab_screens/salon_screen.dart';

class NavHome extends StatefulWidget {
  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            height: 80,
            width: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Anna,",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Center(
                              child: FaIcon(
                            FontAwesomeIcons.locationArrow,
                            size: 16,
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "New York,US,",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          leading: Container(),
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.red, width: 3),
                  top: BorderSide(color: Colors.red, width: 3)),
            ),
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                iconMargin: EdgeInsets.all(0),
                child: Container(
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Salon',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Health',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Card',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'BOOK',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'BOOK',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'User Profile',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Cart',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Service Provider',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'ServicePageeOne',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Service Provider Page',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            SalonScreen(),
            HealthScreen(),
            Cardfile(),
            ServiceProviderPage(),
            ServicePageeOne(),
            Pay(),
            BillInfo(),
            Reservation(),
            Noti(),
            PageAboutUS(),
            Nearby(),
          ],
        ),
      ),
    );
  }
}
