import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String groupColor = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: RaisedButton(
        child: Text("Select Your Language"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (conetx) {
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
                                          value: "Green",
                                          groupValue: groupColor,
                                          onChanged: (val) {
                                            groupColor = val;
                                            setState(() {});
                                          }),
                                      Text("Arabic"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                          value: "Red",
                                          groupValue: groupColor,
                                          onChanged: (val) {
                                            groupColor = val;
                                            setState(() {});
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/logo.jpg"),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
      )),
    );
  }
}
