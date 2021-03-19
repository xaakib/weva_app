import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  color: Color(0xffF8F8F8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 105,
                              width: 105,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/profile-default_image.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Anna Franklin",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Eva point = 30",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Account Settings",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        "Help Support",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        "Sign In",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        "My Point",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
