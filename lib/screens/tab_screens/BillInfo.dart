import 'package:flutter/material.dart';

class BillInfo extends StatefulWidget {
  @override
  _BillInfoState createState() => _BillInfoState();
}

class _BillInfoState extends State<BillInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.red,
                      ),
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/wevaicon.png",
                          height: 50,
                          width: 100,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,top: 8),
                      child: Text("Bill Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 15.0,),
                    Divider(thickness:4,),
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,top: 8,bottom: 8),

                      child: Text("Name Of the Service Provider",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                    SizedBox(height:5.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image.asset("assets/images/capture.PNG"),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:14.0,top: 8),

                          child: Text("Hello Kitty Beauty spa"),
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_location),
                            Text("road-41/9,caffonia,USA"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height:15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Payment Type",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:45.0),
                          child: Text(
                            "Regular",
                            style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height:15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Used Weva Point",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:40.0),
                          child: Text(
                            "10 points",
                            style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Biller Amount",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Text(
                            "AED 500.00",
                            style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            SizedBox(height: 50.0,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,top: 8),
                      child: Text("Service Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20.0,),
                    Divider(thickness:4,),
                    SizedBox(height:5.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Name",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:15.0),
                          child: Text(
                            "Gorza bar nerd Swan ",
                            style: TextStyle(color: Colors.black, fontSize: 17,),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height:15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Date",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Text(
                            "30 Nov 2021",
                            style: TextStyle(color: Colors.black, fontSize: 17,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:15.0,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text(
                            "Time",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        Spacer(), // use Spacer
                        Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Text(
                            "07:45 PM",
                            style: TextStyle(color: Colors.black, fontSize: 17,),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.0,),

                    Padding(
                      padding: const EdgeInsets.only(right:260.0),
                      child: Text(
                        "Service type",
                        style: TextStyle(color: Colors.grey, fontSize: 20,),
                      ),
                    ),
                    SizedBox(height: 10.0,),

                    Padding(
                      padding: const EdgeInsets.only(right:200.0),
                      child: Text(
                        "Blow dry ,Hair Cut,\nHair Cut",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 30.0,),
              Column(
                children: [
                  new ButtonBar(children: <Widget>[
                    Container(
                      height: 50,
                      width:150,
                      child: new TextButton(
                        child: new Text("Cancel",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                        onPressed: () => debugPrint("Button 1"),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(color: Colors.red, spreadRadius: 3),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 50,
                      width:150,
                      child: new TextButton(
                        child: new Text("Download",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                        onPressed: () => debugPrint("Button 1"),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(color: Colors.green, spreadRadius: 3),
                        ],
                      ),
                    ),

                  ]),
                ],
              ),
            ], // Main Childres
          ),
        ),
      ),
    );
  }
}
