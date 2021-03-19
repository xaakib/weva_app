import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_NavigationScreens/favourit_screen.dart';
import 'bottom_NavigationScreens/filter_screen.dart';
import 'bottom_NavigationScreens/nav_home.dart';
import 'bottom_NavigationScreens/near_Screen.dart';
import 'bottom_NavigationScreens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List listOfPage = [
    NavHome(),
    FavouriteScreen(),
    NearScreen(),

    // NavHomeScreen(),
    FilterScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/wevaicon.png",
            fit: BoxFit.cover, height: 50, width: 70),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => showGeneralDialog(
            barrierLabel: "Barrier",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.5),
            transitionDuration: Duration(milliseconds: 300),
            context: context,
            pageBuilder: (_, __, ___) {
              return buildListView();
            },
            transitionBuilder: (_, anim, __, child) {
              return SlideTransition(
                position:
                    Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
                child: child,
              );
            },
          ),
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
      body: listOfPage[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        height: 50,
        color: Colors.black,
        activeColor: Colors.red,
        backgroundColor: Colors.white,
        style: TabStyle.custom,
        items: [
          TabItem(
              icon: Center(child: FaIcon(FontAwesomeIcons.home)),
              title: 'Home'),
          TabItem(
              icon: Center(child: FaIcon(FontAwesomeIcons.heart)),
              title: 'Favourite'),
          TabItem(
              icon: Center(child: FaIcon(FontAwesomeIcons.map)),
              title: 'Nearby'),
          TabItem(
              icon: Center(child: FaIcon(FontAwesomeIcons.fileExcel)),
              title: 'Filter'),
          TabItem(
              icon: Center(child: FaIcon(FontAwesomeIcons.peopleCarry)),
              title: 'Profile'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }

  Widget buildListView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                print("Profile");
              },
              leading: Icon(
                Icons.markunread,
                color: Colors.green,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cake,
                color: Colors.pink,
              ),
              onTap: () {
                print("Eva points");
              },
              title: Text(
                "Eva Points",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.call_end,
                color: Colors.teal,
              ),
              title: Text(
                "My reservation",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user,
                color: Colors.green,
              ),
              title: Text(
                "User Directory",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.green,
              ),
              title: Text(
                "About us",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.all_out,
                color: Colors.red,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_right,
                size: 25,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
