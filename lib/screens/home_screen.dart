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
                            Icons.shopping_cart,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {}),
                    ],

                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
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
        color: Colors.black38,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.favorite, color: Colors.white, size: 30),
          Icon(Icons.add_alert, color: Colors.white, size: 30),
          Icon(Icons.hotel, color: Colors.white, size: 30),
          Icon(Icons.inbox, color: Colors.white, size: 30),
          Icon(Icons.menu, color: Colors.white, size: 30),
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
            height: 560,
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
                    Icons.settings,
                    size: 25,
                    color: Colors.green,
                  ),
                  text: "Profile",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.add_to_home_screen,
                    size: 25,
                    color: Colors.pink,
                  ),
                  text: "Eva Points",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.call,
                    size: 25,
                    color: Colors.red,
                  ),
                  text: "My reservation",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.notifications,
                    size: 25,
                    color: Colors.green,
                  ),
                  text: "notifications",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.notifications,
                    size: 25,
                    color: Colors.pinkAccent,
                  ),
                  text: "notifications",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.verified_user,
                    size: 25,
                    color: Colors.blue,
                  ),
                  text: "notifications",
                ),
                Divider(),
                SettingsMenu(
                  icon: Icon(
                    Icons.settings,
                    size: 25,
                    color: Colors.greenAccent,
                  ),
                  text: "Settings",
                ),
                Divider(),
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
