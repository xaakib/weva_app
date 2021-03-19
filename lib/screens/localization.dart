import 'package:flutter/material.dart';

import 'login_screen.dart';

class Localization extends StatefulWidget {
  @override
  _LocalizationState createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  String groupColor = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/images/wevaicon.png",
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " to",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " Weva app",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " We are here to help you. You will a better experience in online ticket booking. we will provide the best servicfor you",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: RaisedButton(
                  child: Text("Select Your Language"),
                  onPressed: () {
                    showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (conetx) {
                        return showDiyalogs();
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget showDiyalogs() {
    return Dialog(
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: Colors.red, //
                width: 2.0,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Select Your language",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: "Arabic",
                              groupValue: groupColor,
                              onChanged: (val) {
                                groupColor = val;
                                setState(() {
                                  Navigator.pop(context);
                                });
                              }),
                          Text("Arabic"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "English",
                              groupValue: groupColor,
                              onChanged: (val) {
                                groupColor = val;
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  );
                                });
                              }),
                          Text("English"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -40,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.red, //
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.jpg"),
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
