import 'package:flutter/material.dart';

class FilterDropDown extends StatefulWidget {
  @override
  _FilterDropDownState createState() => _FilterDropDownState();
}

class _FilterDropDownState extends State<FilterDropDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            Card(
              child: Container(
                // margin: const EdgeInsets.all(5.0),
                color:Colors.white,
                width:390,
                height: 320.0,
              ),
            ),

            Container(
             // margin: const EdgeInsets.all(5.0),
              color:Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:10,top:18.0),
                child: Text(
                  'Sort By',
                  style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              width:370,
              height: 60.0,
            ),
            Container(
             // margin: const EdgeInsets.all(5.0),
              color:Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:10,top:18.0),
                child: Text(
                  'Relevance',
                  style: TextStyle(fontSize: 18, color: Colors.black,),
                ),
              ),
              width:370,
              height: 60.0,
            ),

            Container(
              margin: const EdgeInsets.all(5.0),
              color:Colors.pink[100],
              child: Padding(
                padding: const EdgeInsets.only(left:10,top:18.0),
                child: Text(
                  'I am container',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
              width:370,
              height: 60.0,
            ),
            Container(
              // margin: const EdgeInsets.all(5.0),
              color:Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:10,top:18.0),
                child: Text(
                  'High to low price',
                  style: TextStyle(fontSize: 18, color: Colors.black,),
                ),
              ),
              width:370,
              height: 60.0,
            ),
            Container(
              // margin: const EdgeInsets.all(5.0),
              color:Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:10,top:18.0),
                child: Text(
                  'low to High price',
                  style: TextStyle(fontSize: 18, color: Colors.black,),
                ),
              ),
              width:370,
              height: 60.0,
            ),
            SizedBox(height: 40.0),
            MaterialButton(
              height: 58,
              minWidth: 370,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {},
              child: Text(
                "Apply",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              color: Colors.red[600],
            ),
           ],
        ),

      ),
    );
  }
}
