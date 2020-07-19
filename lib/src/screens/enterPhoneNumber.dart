import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class EnterPhoneNumber extends StatefulWidget {
  @override
  _EnterPhoneNumberState createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 32.0, top: 140.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 140.0, left: 40.0, right: 40.0),
              child: InternationalPhoneNumberInput(
                searchBoxDecoration: InputDecoration(
                  labelText: "Please Enter your Phone Number",
                ),
                countries: ["DE", "UA", "RU", "TR"],
                inputBorder: OutlineInputBorder(),
                onInputValidated: (value) {
                  setState(() {});
                },
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: OutlineButton(
                child: Text('NEXT'),
                onPressed: () {
                  //TODO next screen
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
