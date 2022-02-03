import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/screen/login.dart';
import 'package:nofap_warriors/screen/register.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool goLogin = false;

  bool goRegister = false;

  void goToLoginPage() {
    setState(() {
      goLogin = true;
      goRegister = false;
    });
  }

  void goToRegister() {
    setState(() {
      goLogin = false;
      goRegister = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!goLogin && !goRegister) {
      return Scaffold(
        backgroundColor: HexColor("#ffc492"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    color: HexColor("#322c24"),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "you can't be successful unless you do it",
                style: TextStyle(
                  color: HexColor("#20252b"),
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: 275.0,
                height: 65.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: HexColor("#20252b"),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                      //goToLoginPage();
                    },
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'login',
                            style: TextStyle(
                              color: HexColor('#dddcdf'),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 60.0),
                          child: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an accout ? ",
                    style: TextStyle(
                      color: HexColor("#20252b"),
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: HexColor('#20252b'),
                    ),
                    onPressed: () {
                      //Navigator.pushNamed(context, "/register");
                      goToRegister();
                    },
                    child: Text('Sign up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else if (goLogin) {
      return LoginPage(
        changeWidget: goToRegister,
      );
    } else {
      return RegisterPage(changeWidget: goToLoginPage);
    }
  }
}
