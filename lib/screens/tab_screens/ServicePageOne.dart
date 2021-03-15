import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicePageeOne extends StatefulWidget {
  @override
  _ServicePageeOneState createState() => _ServicePageeOneState();
}

class _ServicePageeOneState extends State<ServicePageeOne> {
  bool _checkboxListTile = false;
  bool _isBluetoothOn = false;
  @override
  Widget build(BuildContext context) {
    DateTime _chosenDateTime;

    // Show the modal that contains the CupertinoDatePicker
    void _showDatePicker(ctx) {
      // showCupertinoModalPopup is a built-in function of the cupertino library
      showCupertinoModalPopup(
          context: ctx,
          builder: (_) => Container(
                height: 500,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (val) {
                            setState(() {
                              _chosenDateTime = val;
                            });
                          }),
                    ),

                    // Close the modal
                    CupertinoButton(
                      child: Text('New Service'),
                      onPressed: () => Navigator.of(ctx).pop(),
                    )
                  ],
                ),
              ));
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 300.0, top: 20),
                child: Text(
                  "close",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
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
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "1 Hour",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.timer), onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "9:38",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
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
                          "Select a Professional",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child:
                                        Image.asset("assets/images/user.png"),
                                  ),
                                  Text(
                                    "Elinda",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "Ulltra Sonologist",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                  Text(
                                    "12.00PM - 9.00",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child:
                                        Image.asset("assets/images/user.png"),
                                  ),
                                  Text(
                                    "Elinda",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "Ulltra Sonologist",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                  Text(
                                    "12.00PM - 9.00",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child:
                                        Image.asset("assets/images/user.png"),
                                  ),
                                  Text(
                                    "Elinda",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14.0),
                                  ),
                                  Text(
                                    "Ulltra Sonologist",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                  Text(
                                    "12.00PM - 9.00",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    checkColor: Colors.red,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'Anyone',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    value: _checkboxListTile,
                    onChanged: (value) {
                      setState(() {
                        _checkboxListTile = !_checkboxListTile;
                      });
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _showDatePicker(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Container(
                  child: Text(
                    "Select a Time Slot",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // void showDatePicker(){
  //   showModalBottomSheet(context: context, builder:(_){
  //     return  SingleChildScrollView(
  //       child: Column(
  //        // crossAxisAlignment: CrossAxisAlignment.stretch,
  //        // mainAxisSize: MainAxisSize.min,
  //         children: [
  //           CupertinoDatePicker(onDateTimeChanged: (DateTime value) {  },
  //           ),
  //           ElevatedButton(onPressed: (){
  //           },
  //             child:Text("New Service") ,
  //           ),
  //
  //
  //         ],
  //       ),
  //     );
  //   });
  // }
}
