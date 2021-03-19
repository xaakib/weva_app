import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weva_app/screens/tab_screens/Aboutus.dart';
import 'package:weva_app/screens/tab_screens/BillInfo.dart';
import 'package:weva_app/screens/tab_screens/Nearby.dart';
import 'package:weva_app/screens/tab_screens/Notification.dart';
import 'package:weva_app/screens/tab_screens/Pay.dart';
import 'package:weva_app/screens/tab_screens/Reservation.dart';
import 'package:weva_app/screens/tab_screens/ServicePageOne.dart';
import 'package:weva_app/screens/tab_screens/ServicePageProvider.dart';
import 'package:weva_app/screens/tab_screens/ServiceProviderPage.dart';
import 'package:weva_app/screens/tab_screens/cardfile.dart';
import 'package:weva_app/screens/tab_screens/health_screen.dart';
import 'package:weva_app/screens/tab_screens/home_page.dart';
import 'package:weva_app/screens/tab_screens/salon_screen.dart';

import '../fav_page.dart';
import '../user_profile.dart';
import 'filter_screen.dart';
import 'profile_screen.dart';

class NavHome extends StatefulWidget {
  @override
  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 17,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Text(
                      "Weva App",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
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
                    'Service Provider Page',
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
                    'ServicePageProvider',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Pay',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Filter',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Bill info',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Reservation',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Noti',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'FavPage',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'PageABoutus',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Near By',
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
            UserProfile(),
            Profile(),
            Cardfile(),
            ServiceProviderPage(),
            ServicePageeOne(),
            ServicePageProvider(),
            Pay(),
            FilterScreen(),
            BillInfo(),
            Reservation(),
            Noti(),
            Fpage(),
            PageAboutUS(),
            Nearby(),
          ],
        ),
      ),
    );
  }
}
