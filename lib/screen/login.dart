import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
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
              child: SingleChildScrollView( //ใช้เพื่อให้จอเลื่อนได้ จะได้แก้ปัญหา buttom overflow
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.map),
                      radius: 60.0,
                    ),
                    SizedBox(height: 50.0,),
                    TextFormField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Username",
                          fillColor: Colors.white70),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Password",
                          fillColor: Colors.white70),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0,),
                    Material(
                      child: MaterialButton(
                        minWidth: 300.0,
                        height: 50.0,
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, "/profile");
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)
                        ),
                        color: Colors.lightBlueAccent,
                        child: Text('Log In',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 160,),
                        TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.grey[700])),),
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
