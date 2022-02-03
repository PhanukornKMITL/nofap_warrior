import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nofap_warriors/models/user.dart';
import 'package:nofap_warriors/screen/Home/home.dart';
import 'package:nofap_warriors/screen/estimate/estimate.dart';
import 'package:nofap_warriors/screen/landing_page.dart';
import 'package:nofap_warriors/screen/login.dart';
import 'package:nofap_warriors/screen/register.dart';
import 'package:nofap_warriors/screen/wrapper.dart';
import 'package:nofap_warriors/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: 'uni-sans',
        ),
        routes: {
          //"/": (context) => Wrapper(),
          "/": (context) => HomePage(),
          "/landing": (context) => LandingPage(),
          "/login": (context) => LoginPage(),
          "/register": (context) => RegisterPage(),
          "/home": (context) => HomePage(),
          '/estimate': (context) => EstimatePage(),
        },
        initialRoute: "/",
      ),
    );
  }
}
