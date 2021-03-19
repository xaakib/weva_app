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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              color: Color(0xffF6F6F6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "1 of 2 Service",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "close",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blow Dry",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "1 Hour",
                            style: TextStyle(
                                fontSize: 12,
                                //fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Icon(
                              Icons.timer,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          onPressed: () {}),
                      Text(
                        "9:38",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xffF1F1F1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Select a Professional",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Container(
                        height: 120,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            primary: false,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    child:
                                        Image.asset("assets/images/user.png"),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Elinda",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 12.0),
                                  ),
                                  Text(
                                    "Ulltra Sonologist",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.0),
                                  ),
                                  Text(
                                    "12.00PM - 9.00",
                                    style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: 12.0),
                                  ),
                                ],
                              );
                            }),
                      ),
                    )
                  ],
                ),
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
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                  child: Padding(
                    padding: const EdgeInsets.only(right: 55.0),
                    child: Text(
                      "Select a Time Slot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
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
