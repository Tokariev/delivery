import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        body: EnterPhoneNumberPage(),
      ),
    );
  }
}

class EnterPhoneNumberPage extends StatelessWidget {
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

              },
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: FlatButton(
              child: Text('NEXT'),
              onPressed: () {

              },
            ),

          )
        ],
      ),
    );
  }
}