import 'package:flutter/material.dart';
import 'package:nofap_warriors/screen/landing_page.dart';
import 'package:nofap_warriors/screen/login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      routes: {
        "/":(context) => LandingPage(),
        "/login":(context) => LoginPage(),
       
      },
      initialRoute: "/",
    );
  }
}