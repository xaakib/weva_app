import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.red,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 171,
                    width: 309,
                    child: Card(
                      elevation: 2,
                      color: Color(0xffF1F1F1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 105,
                            width: 105,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/profile-default_image.jpg"),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Anna Franklin",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Eva point = 30",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "yourmail@gmail.com",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 16,
                                width: 64,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text("Logout"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Spacer(),
                      //   IconButton(icon: Icon(Icons.edit), onPressed: () {})
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
