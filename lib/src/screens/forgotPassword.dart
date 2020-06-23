import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 115),
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 28.0),
                    ),
                    SizedBox(height: 120),
                    Text(
                      'Enter Your Phone Number',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14.0),
                    ),
                    SizedBox(height: 22),
                    Container(),
                    SizedBox(height: 22),
                    SizedBox(height: 60),
                    Text(
                      'Forgot password?',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
