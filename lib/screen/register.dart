import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/shared/textformfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ffc492"),
      //กัน buttom overflow
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: SingleChildScrollView(
              //ใช้เพื่อให้จอเลื่อนได้ จะได้แก้ปัญหา buttom overflow
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  textFormField("Username", false),
                  SizedBox(
                    height: 20.0,
                  ),
                  textFormField("Password", true),
                  SizedBox(
                    height: 20.0,
                  ),
                  textFormField("Comfirm Password", true),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: HexColor("#20252b"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: HexColor('#dddcdf'),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an accout ? ",
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
                          Navigator.pop(context);
                        },
                        child: Text('Sign in'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}