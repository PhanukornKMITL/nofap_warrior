import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                color: HexColor("#a8794e"),
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
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: HexColor('#dddcdf'),
                      ),
                    ),
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
                    color: HexColor("#a8794e"),
                    fontSize: 15,
                  ),
                ),
                 TextButton(
                 style: TextButton.styleFrom(
                   primary: HexColor('#20252b'),
                 ),
                 onPressed: (){
                    Navigator.pushNamed(context, "/login");
                 },
                 child: Text('Sign up'),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
