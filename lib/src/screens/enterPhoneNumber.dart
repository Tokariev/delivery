import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class EnterPhoneNumber extends StatefulWidget {
  @override
  _EnterPhoneNumberState createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  bool displayButton = false;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 32.0, top: 180.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 48.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0, left: 40.0, right: 40.0),
            child: InternationalPhoneNumberInput(
              searchBoxDecoration: InputDecoration(
                labelText: "Please Enter your Phone Number",
              ),
              countries: ["DE", "UA", "RU", "TR"],
              inputBorder: OutlineInputBorder(),
              onInputValidated: (value) {
                setState(() {
                  displayButton = value;
                });
              },
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
            ),
          ),
          Visibility(
              visible: displayButton,
              maintainState: displayButton,
              child: Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: OutlineButton(
                  highlightedBorderColor: Colors.green,
                  // shape: new RoundedRectangleBorder(
                  //    borderRadius: new BorderRadius.circular(30.0)),
                  child: Text('NEXT'),
                  onPressed: () {
                    //TODO next screen
                  },
                ),
              ))
        ],
      ),
    );
  }
}
