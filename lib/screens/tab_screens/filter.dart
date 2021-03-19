import 'package:flutter/material.dart';

import 'FilterDropDown.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: GestureDetector(
          onTap: () {
            print("st5t5s");
          },
          child: Image.asset(
            "assets/images/wevaicon.png",
            height: 50,
            width: 100,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              DefaultTabController(
                length: 4,
                child: TabBar(
                  tabs: [
                    Container(
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Salon",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Health",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Fitness",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Icon(
                        Icons.filter_list_alt,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Spacer(), // use Spacer
                    Text(
                      "Sort By :Closest",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterDropDown()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                          size: 35,
                        )),

                    // IconButton(
                    //   icon: Icon(
                    //     Icons.arrow_drop_down,
                    //     size: 50,
                    //     color: Colors.red,
                    //   ),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => FilterDropDown()),
                    //     );
                    //
                    //   },
                    // ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Beauty Service"),
                            SizedBox(
                              width: 30.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onPressed: () {}),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/filter2.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Beauty Service"),
                            SizedBox(
                              width: 30.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onPressed: () {}),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/filter3.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Beauty Service"),
                            SizedBox(
                              width: 30.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onPressed: () {}),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/filter4.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Beauty Service"),
                            SizedBox(
                              width: 30.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onPressed: () {}),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/filter5.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Beauty Service"),
                            SizedBox(
                              width: 30.0,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                onPressed: () {}),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 17.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/filter1.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ], //Mail Children
          ),
        ),
      ),
    );
  }
}
