import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class EnterPassScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0E0E0E),
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 115),
                    Text(
                      'Password',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 28.0),
                    ),
                    SizedBox(height: 45),
                    Text(
                      'Enter your password',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 14.0),
                    ),
                    SizedBox(height: 22),
                    PinCodeTextField(
                      pinTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                      ),
                      pinBoxHeight: 50.0,
                      pinBoxWidth: 50.0,
                      pinBoxColor: Colors.grey.shade900,
                      pinBoxRadius: 12,
                    ),
                    SizedBox(height: 22),
                    Text(
                      'OR',
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(height: 22),
                    Icon(
                      Icons.fingerprint,
                      size: 60.0,
                      color: Colors.blue,
                    ),
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
