import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Notification.dart';

class ServicePageProvider extends StatefulWidget {
  @override
  _ServicePageProviderState createState() => _ServicePageProviderState();
}

class _ServicePageProviderState extends State<ServicePageProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.red,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/images/capture.PNG",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello Kitty Beauty spa",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.add_location,
                                    size: 15,
                                  ),
                                  Text(
                                    "road-41/9,caffonia,USA",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 180.0,
                            width: MediaQuery.of(context).size.width,
                            child: Carousel(
                              boxFit: BoxFit.cover,
                              autoplay: true,
                              animationCurve: Curves.linearToEaseOut,
                              animationDuration: Duration(milliseconds: 1000),
                              dotSize: 7.0,
                              dotHorizontalPadding: 12,
                              dotIncreasedColor: Colors.red,
                              dotBgColor: Colors.transparent,
                              dotPosition: DotPosition.bottomCenter,
                              dotColor: Colors.white,
                              dotVerticalPadding: 10.0,
                              showIndicator: true,
                              indicatorBgPadding: 7.0,
                              images: [
                                NetworkImage(
                                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                                ),
                                NetworkImage(
                                  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                                ),
                                NetworkImage(
                                  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
                                ),
                                NetworkImage(
                                    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 160.0),
                                  child: Text("Hello Kitty Beauty Spa",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Icon(
                                    Icons.add_location,
                                    size: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Road - 41/9 California",
                              style: TextStyle(fontSize: 10)),
                          SizedBox(
                            height: 4,
                          ),
                          Text("USA .", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red, width: 2)),
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red, width: 2)),
                        child: Icon(FontAwesomeIcons.facebook,
                            color: Colors.red, size: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red, width: 2)),
                        child: Icon(FontAwesomeIcons.snapchat,
                            color: Colors.red, size: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.red, width: 2)),
                        child: Icon(FontAwesomeIcons.phone,
                            color: Colors.red, size: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0, left: 14),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Search Service",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "About",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id est volutpat magna imperdiet tempus. Sed vehicula commodo risus quis commodo. Morbi tempus sagittis libero at hendrerit. Nulla eget sapien eget tur pis facilisis fringilla quis eu justo. Aliquam egestas ante ut eleifend rhoncus. Nulla facilisi. Praesent nec urna tempor, feugiat libero non, facilisis ipsum.",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_parking, color: Colors.red),
                          Text("Free Parking")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Colors.red,
                          ),
                          Text("Credit Cards Accepted")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.wifi, color: Colors.red),
                          Text("WiFi available ")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Blow Dry",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "AED 250.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.error,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => Noti()),
                                  );
                                },
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                icon: Icon(
                                  Icons.check_box,
                                  size: 20.0,
                                  color: Colors.red,
                                ),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Blow Dry",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "AED 250.00",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 15,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Noti()),
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.check_box,
                            size: 20.0,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Blow Dry",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "AED 250.00",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 15,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Noti()),
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.check_box,
                            size: 20.0,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Blow Dry",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "AED 250.00",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 15,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Noti()),
                            );
                          },
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.check_box,
                            size: 20.0,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 318.0),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/images/chat1.png",
                              height: 50,
                              width: 200,
                              color: Colors.white,
                              colorBlendMode: BlendMode.darken,

                              // fit: BoxFit.contain,
                              // semanticLabel: 'Desh Mascot',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RaisedButton(
                        color: Colors.red[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 25),
                        ),
                      )
                      // Container(
                      //   color: Colors.red[400],
                      //   // decoration: BoxDecoration(color: Colors.red),
                      //   child: RaisedButton(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(5)),
                      //
                      //     child: Text(
                      //       'Book Now',
                      //       style: TextStyle(
                      //           fontSize: 20,
                      //           color: Colors.white.withOpacity(0.8)),
                      //     ),
                      //     // color: Colors.red,
                      //     // shape: RoundedRectangleBorder(
                      //     //     borderRadius: BorderRadius.all(Radius.circular(50.0))),
                      //     onPressed: () {},
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
