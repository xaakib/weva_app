import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { cashPayment, debitCredit }

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  SingingCharacter _character = SingingCharacter.cashPayment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        ),
                        onPressed: () {}),
                    Text(
                      "                  Payment Review",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:0.0),
                      child: Row(
                        children: [

                          Container(
                            height: 100,
                            width: 350,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                  AssetImage("assets/images/capture.PNG"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:30.0,left: 5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Hello Kitty Beauty spa",
                                        style:
                                        TextStyle(fontSize: 15, color: Colors.black),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,size: 20,),
                                          Text(
                                            "30.09 Km  away",
                                            style:
                                            TextStyle(fontSize: 13, color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

                // Column(
                //   children: [
                //     Text("Hello Kitty Beauty spa"),
                //     Row(
                //       children: [
                //         Icon(Icons.add_location),
                //         Text("road-41/9,caffonia,USA"),
                //       ],
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 90.0),
                        child: Text(
                          "Wednesday, 20 January 2021",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
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
                  height: 0,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ultra Sonography",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Duration : 1 hour",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                ),
                                Text(
                                  "New Work, 01:00 PM",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Icon(
                              Icons.close,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AED 500.00",
                            style: TextStyle(color: Colors.red, fontSize: 12.0),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:180.0,bottom: 40),
                      //   child: Icon(Icons.close,size: 20,),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ultra Sonography",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Duration : 1 hour",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14.0),
                                ),
                                Text(
                                  "New Work, 01:00 PM",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Icon(
                              Icons.close,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AED 500.00",
                            style: TextStyle(color: Colors.red, fontSize: 12.0),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:180.0,bottom: 40),
                      //   child: Icon(Icons.close,size: 20,),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 170.0),
                    child: Text(
                      "+ ADD MORE SERVICE",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      "Select payment Method",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                ListTile(
                  leading: Text("Cradit/Debit Caerd"),
                  title: Row(
                    children: [
                      Image.asset("assets/images/visa.jpg",height: 40.0,width: 30,),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/mastercard.png",height: 40.0,width: 30,),
                      SizedBox(width: 20,),
                       Image.asset("assets/images/paypal.png",height: 40.0,width: 30,),

                    ],
                  ),

                  trailing: Radio(value: null, groupValue: null, onChanged: (v){
                    setState(() {

                    });
                  }),
                ),
                ListTile(
                  title: Row(

                    children: [
                      Image.asset("assets/images/dolar_icon.PNG",height: 30,width: 40,),
                SizedBox(width: 20.0,),
                Text("Cash Payment  "),
                    ],
                  ),

                  trailing: Radio(value: null, groupValue: null, onChanged: (v){
                    setState(() {

                    });
                  }),
                ),



                SizedBox(
                  height: 5.0,
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
                          Text("Cradit/Debit Caerd"),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ), // Card Item
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      "Use Eva Points",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Spacer(), // use Spacer
                    Text(
                      "View Available Points",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 28.0, left: 14),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      suffixIcon: Container(
                        alignment: Alignment.center,
                        width: 80.0,
                        decoration: BoxDecoration(color: Colors.red[300]),
                        child: Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Text("Apply",style: TextStyle(fontSize: 18.0),),
                        ),
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Enter Points /Cupon Code",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cart Total",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AED 500.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15.0),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:180.0,bottom: 40),
                      //   child: Icon(Icons.close,size: 20,),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Discount(Eva Points)",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AED 50%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15.0),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:180.0,bottom: 40),
                      //   child: Icon(Icons.close,size: 20,),
                      //
                      // ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Amount Payable",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AED 50%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 15.0),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left:180.0,bottom: 40),
                      //   child: Icon(Icons.close,size: 20,),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 22.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                      ),
                      height: 55.0,
                      width: 250,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Select Payment Method",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Flutter code sample for

// ![RadioListTile sample](https://flutter.github.io/assets-for-api-docs/assets/material/radio_list_tile.png)
//
// This widget shows a pair of radio buttons that control the `_character`
// field. The field is of the type `SingingCharacter`, an enum.
