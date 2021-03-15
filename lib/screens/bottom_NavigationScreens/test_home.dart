import 'package:flutter/material.dart';
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

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          bottom: TabBar(
            indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.red, width: 3),
                  top: BorderSide(color: Colors.red, width: 3)),
            ),
            unselectedLabelColor: Colors.yellow,
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
              Tab(
                child: Container(
                  child: Text(
                    'Pay',
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
