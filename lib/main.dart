import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int val1 = 0, val2 = 0, val3 = 0, val4 = 0, val5 = 0;
  bool bif = false;
  Random r = new Random();
  void change() {
    setState(() {
      bif = true;
      val1 = r.nextInt(100) + 1;
      val2 = r.nextInt(100) + 1;
      val3 = r.nextInt(100) + 1;
      val4 = r.nextInt(100) + 1;
      val5 = r.nextInt(100) + 1;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[700],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: Center(
              child: Text(
                "Love Calculator 2020",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Lobster',
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ), //- Title
          Visibility(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/logo.png',
                height: 100,
              ),
            ),
          ), // - Main Logo
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            color: Colors.red,
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hoverColor: Colors.white,
                fillColor: Colors.white,
                focusColor: Colors.white,
                labelText: "Lover 1",
                hintText: 'Enter name here',
                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                ),
              ),
            ),
          ), // - Lover1
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.red,
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              autocorrect: true,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hoverColor: Colors.white,
                fillColor: Colors.white,
                focusColor: Colors.white,
                labelText: "Lover 2",
                hintText: 'Enter name here',
                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                ),
              ),
            ),
          ), // - Lover2
          Container(
            padding: EdgeInsets.symmetric(horizontal: 75.0, vertical: 16.0),
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.red,
            child: RaisedButton(
              color: Colors.red[800],
              onPressed: change,
              child: Text(
                "Calculate",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                    fontSize: 16),
              ),
            ),
          ), // - Button
          Visibility(
            visible: bif,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(
                'images/logo.png',
                height: 50,
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Center(
              child: Text(
                'Love between them is $val1%',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.2),
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'images/logo.png',
                height: 30,
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Center(
              child: Text(
                'Chance of marriage between them is $val2%',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.2),
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'images/logo.png',
                height: 30,
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Center(
              child: Text(
                'Chances of Affair between them is $val3%',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.2),
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'images/logo.png',
                height: 30,
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Center(
              child: Text(
                'Bond between them is $val4%',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.2),
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'images/logo.png',
                height: 30,
              ),
            ),
          ),
          Visibility(
            visible: bif,
            child: Center(
              child: Text(
                'Chances of succesfull love is $val5%',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.2),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
