import 'package:flutter/material.dart';


class Fpage extends StatefulWidget {
  @override
  _FpageState createState() => _FpageState();
}

class _FpageState extends State<Fpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            showDialog(
              context: context,
              builder: (conetx) {
                return showAlert();
              },
            );
          },
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title:  GestureDetector(
          onTap:(){
            print("st5t5s");
          },
          child: Image.asset(
            "assets/images/wevaicon.png",
            height: 50,
            width: 100,
          ),
        ),

        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        ),
                        onPressed: () {}),
                    Text(
                      "         Favorite Page",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),

              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("  Beauty Service"),
                            SizedBox(width: 30.0,),
                            IconButton(icon: Icon(Icons.star,color: Colors.green,), onPressed: (){}),
                            Text("4.8",style: TextStyle(fontSize: 17.0),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("  California"),
                            Icon(Icons.exposure_zero_sharp),
                            Text("23.33Km"),
                            SizedBox(width: 30.0,),
                            Icon(Icons.favorite,color: Colors.red,),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Row(
                          children: [
                            Text("  #Myservice",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/fev.PNG'),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(
                height: 150.0,
              ),

            ], //Mail Children
          ),
        ),
      ),
    );
  }
  Widget showAlert() {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.markunread,
                      color: Colors.green,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.cake,
                      color: Colors.pink,
                    ),
                    title: Text(
                      "Eva Points",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call_end,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "My reservation",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.verified_user,
                      color: Colors.green,
                    ),
                    title: Text(
                      "User Directory",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    title: Text(
                      "About us",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.all_out,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: -90,
                child: Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              bottom: -60,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  print("Clicked");
                },
                icon: Icon(
                  Icons.cancel,
                  size: 60,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



