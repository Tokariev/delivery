import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassScreen extends StatelessWidget {
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
                    SizedBox(height: 220),
                    FlatButton(
                        onPressed: () {
                          print('Next router');
                        },
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 100.0),
                        child: Text(
                          'NEXT',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 16.0),
                        ),
                        shape: new RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFF25CB55),
                                width: 1.5,
                                style: BorderStyle.solid),
                            borderRadius: new BorderRadius.circular(30.0))),
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
