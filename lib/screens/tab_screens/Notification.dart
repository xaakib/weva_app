import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                      "         Notification",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Card(
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'You have appoinment on salon within',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: '1 hour',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[400])),
                            TextSpan(
                                text: ' ,get ready for that.',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.red[400], spreadRadius: 2),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Card(
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Congrats!',
                          style:
                              TextStyle(color: Colors.red[400], fontSize: 17),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: ' you have a discount of ',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black)),
                            TextSpan(
                                text: '30%',
                                style: TextStyle(color: Colors.red[400])),
                            TextSpan(
                                text: 'on Hair dying.Grabe this chance now',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.red[400], spreadRadius: 2),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Card(
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Congrats!',
                          style:
                              TextStyle(color: Colors.red[400], fontSize: 17),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: ' you have a discount of ',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black)),
                            TextSpan(
                                text: '30%',
                                style: TextStyle(color: Colors.red[400])),
                            TextSpan(
                                text: 'on Hair dying.Grabe this chance now',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.red[400], spreadRadius: 2),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Card(
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Congrats!',
                          style:
                              TextStyle(color: Colors.red[400], fontSize: 17),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: ' you have a discount of ',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black)),
                            TextSpan(
                                text: '30%',
                                style: TextStyle(color: Colors.red[400])),
                            TextSpan(
                                text: 'on Hair dying.Grabe this chance now',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.red[400], spreadRadius: 2),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
