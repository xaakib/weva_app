import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:weva_app/widgets/custom_btn.dart';
import 'package:weva_app/screens/register_screen.dart';
import 'package:weva_app/screens/home_screen.dart';
import 'package:weva_app/screens/foget_password_screen.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    labelText: "Mobile Number",
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
                    suffixIcon: Icon(Icons.lock_open),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassordScreen()),
                        );
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomBtn(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16.0,
                  ),
                  child: CustomBtn(
                    text: "Create New Account",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    outlineBtn: true,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("as a guest");
                  },
                  child: Text(
                    "As a guest",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
