import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:weva_app/screens/pages/health_screen.dart';
import 'package:weva_app/screens/pages/home_product.dart';
import 'package:weva_app/screens/pages/salon_screen.dart';
import 'package:weva_app/widgets/setting_menu.dart';

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
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    elevation: 0,

                    // backgroundColor: Color(0xff109618),
                    backgroundColor: Colors.white,

                    title: Image.asset("assets/images/wevaicon.png",
                        fit: BoxFit.cover, height: 50, width: 70),

                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {
                        print("Menu");
                        showDialog(
                          context: context,
                          builder: (conetx) {
                            return showAlert();
                          },
                        );
                      },
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
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 30,
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
        color: Colors.black45,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.favorite, color: Colors.white, size: 30),
          Icon(Icons.add_alert_outlined, color: Colors.white, size: 30),
          Icon(Icons.hotel_outlined, color: Colors.white, size: 30),
          Icon(Icons.inbox_outlined, color: Colors.white, size: 30),
          Icon(Icons.menu_open_outlined, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }

  Widget showAlert() {
    return AlertDialog(
      content: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 500,
            width: 300,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SettingsMenu(
                  icon: Icon(
                    Icons.portable_wifi_off_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
                  text: "Profile",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.star,
                    color: Colors.pink,
                    size: 35,
                  ),
                  text: "Eva Points",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.restore_outlined,
                    color: Colors.purple,
                    size: 35,
                  ),
                  text: "My reservation",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.green,
                    size: 35,
                  ),
                  text: "Notification",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.verified_user,
                    color: Colors.red,
                    size: 35,
                  ),
                  text: "User directory",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 35,
                  ),
                  text: "About Us",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.red,
                    size: 35,
                  ),
                  text: "Settings",
                ),
              ],
            ),
          ),
          Positioned(
              top: -90,
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            bottom: -60,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
                print("Clicked");
              },
              icon: Icon(
                Icons.cancel,
                size: 60,
                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
