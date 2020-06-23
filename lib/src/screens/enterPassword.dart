import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                    'Password',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 34.0 ),
                  ),
              Icon(
                    Icons.fingerprint,
                    size: 60.0,
                    color: Colors.indigo,
                  ),
              Text(
                'Enter your password',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16.0 ),
              ),
                ],
          ),
        ),
      ),
    );
  }
}