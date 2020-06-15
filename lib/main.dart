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
      /*theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
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
      /*appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(Icons.menu),
        ),
      ),*/
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