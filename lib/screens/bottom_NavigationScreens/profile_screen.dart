import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 2,
                child: Container(
                  height: 200,
                  width: 350,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 10),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              "assets/images/profile-default_image.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Anna Franklin",
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black),
                            ),
                            Text(
                              "Eva point = 30",
                              style: TextStyle(fontSize: 17, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Spacer(),
                //   IconButton(icon: Icon(Icons.edit), onPressed: () {})
              ),
              Divider(),
              ListTile(
                title: Text("Account Settings"),
                trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () {}),
              ),
              Divider(),
              ListTile(
                title: Text("Help Support"),
                trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () {}),
              ),
              Divider(),
              ListTile(
                title: Text("Sign In"),
                trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () {}),
              ),
              Divider(),
              ListTile(
                title: Text("My Point"),
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
        ),
      ),
    );
  }
}
