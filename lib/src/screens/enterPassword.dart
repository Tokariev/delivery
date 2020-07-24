import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:delivery_app/src/screens/forgotPassword.dart';

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
                      pinBoxColor: Colors.grey.shade700,
                      pinBoxRadius: 12,
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
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
                    FlatButton(
                      padding: EdgeInsets.all(0.0),
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassScreen()));
                      },
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

class PassBoxDecoration {
  /// Default BoxDecoration
  static PinBoxDecoration defaultPinBoxDecoration = (
    Color borderColor,
    Color pinBoxColor, {
    double borderWidth = 2.0,
    double radius = 5.0,
  }) {
    return BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        color: pinBoxColor,
        borderRadius: BorderRadius.circular(radius));
  };

  /// Underlined BoxDecoration
  static PinBoxDecoration underlinedPinBoxDecoration = (
    Color borderColor,
    Color pinBoxColor, {
    double borderWidth = 2.0,
    double radius,
  }) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      ),
    );
  };

  static PinBoxDecoration roundedPinBoxDecoration = (
    Color borderColor,
    Color pinBoxColor, {
    double borderWidth = 2.0,
    double radius,
  }) {
    return BoxDecoration(
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
      shape: BoxShape.circle,
      color: pinBoxColor,
    );
  };
}
