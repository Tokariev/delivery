import 'package:delivery_app/src/screens/enterPhoneNumber.dart';
import 'package:flutter/material.dart';

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
        resizeToAvoidBottomPadding: false,
        body: EnterPhoneNumber(),
      ),
    );
  }
}
