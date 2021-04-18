import 'package:flutter/material.dart';
import 'package:flutterweb_test/FourthPage.dart';
import 'package:flutterweb_test/secondPage.dart';
import 'LandingPage.dart';
import 'LastPage.dart';
import 'Navbar.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ballurh',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.centerLeft,
          //         end: Alignment.centerRight,
          //         colors: [Colors.white, Colors.white]),
          //   ),
          SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Navbar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: LandingPage(),
            ),
            SizedBox(
              height: 20,
            ),
            SecondPage(),
            ThirdPage(),
            FourthPage(),
            LastPage(),
          ],
        ),
      ),
    );
  }
}
