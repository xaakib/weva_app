import 'package:flutter/material.dart';
import 'package:weva_app/screens/phone_OTP_screen.dart';
import 'package:weva_app/widgets/custom_btn.dart';
import 'package:international_phone_input/international_phone_input.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/SMS.png",
                height: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: InternationalPhoneInput(
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date of birth',
                    hintText: "dd/mm/yyyy ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.lock),
                  ),
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
                              'Terms and Condition ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                    ],
                  ),
                ],
              ),
              CustomBtn(
                text: "Confirm",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhoneOTP()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
