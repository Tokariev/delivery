import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
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
                      'Personal Data',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 50.0, right: 50.0),
                child: Text('Name'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 50.0, right: 50.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
                child: Text('Surname'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 50.0, right: 50.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: OutlineButton(
                  borderSide: BorderSide(color: Colors.green),
                  child: Text('NEXT'),
                  onPressed: () {
                    //TODO next screen
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
