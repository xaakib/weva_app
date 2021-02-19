import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        child: Text("Select Your Language"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (conetx) {
                return Center(
                  child: Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.red, //
                            width: 2.0,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Select Your language",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Select Your language",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ],
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
