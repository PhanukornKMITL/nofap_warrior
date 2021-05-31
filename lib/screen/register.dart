import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/services/auth.dart';
import 'package:nofap_warriors/shared/textformfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email = '';
  String password = '';
  String confirmPassword = '';

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
                  TextFormField(
                     style: TextStyle(color: Colors.white, fontFamily: 'roboto'),
                      decoration:
                          textFormFieldDecoration.copyWith(hintText: 'Email'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      style: TextStyle(color: Colors.white, fontFamily: 'roboto'),
                      obscureText: true,
                      decoration: textFormFieldDecoration.copyWith(
                          hintText: 'Password'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                     style: TextStyle(color: Colors.white, fontFamily: 'roboto'),
                      obscureText: true,
                      decoration: textFormFieldDecoration.copyWith(
                          hintText: 'Comfirm Password'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => confirmPassword = val);
                      }),
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
                      onPressed: () async {
                        await AuthService()
                            .registerWithEmailAndPassword(email, password);
                      },
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
