import 'package:flutter/material.dart';
import 'package:nofap_warriors/screen/landing_page.dart';
import 'package:nofap_warriors/screen/login.dart';
import 'package:nofap_warriors/screen/register.dart';



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
        fontFamily: 'uni-sans',
      ),
      routes: {
        "/":(context) => LandingPage(),
        "/login":(context) => LoginPage(),
        "/register":(context) => RegisterPage(),
       
      },
      initialRoute: "/",
    );
  }
}