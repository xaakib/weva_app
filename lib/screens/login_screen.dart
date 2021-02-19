import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber;
  String phoneIsoCode;
  bool visible = false;
  String confirmedNumber = '';

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    print(number);
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  List<bool> checked = [
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/identify.jpg",
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            InternationalPhoneInput(
              onPhoneNumberChange: onPhoneNumberChange,
              initialPhoneNumber: phoneNumber,
              initialSelection: phoneIsoCode,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              enabledCountries: ['+880', ''],
              labelText: "Phone Number",
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock_open_outlined),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    for (var i = 0; i < 1; i += 1)
                      Row(
                        children: [
                          Checkbox(
                            onChanged: i == 1
                                ? null
                                : (bool value) {
                                    setState(() {
                                      checked[i] = value;
                                    });
                                  },
                            tristate: i == 1,
                            value: checked[i],
                            activeColor: Colors.red,
                          ),
                          Text(
                            'Remember ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                  ],
                ),
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
