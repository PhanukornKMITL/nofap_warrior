import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Relapsed extends StatefulWidget {
  @override
  _RelapsedState createState() => _RelapsedState();
}

class _RelapsedState extends State<Relapsed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1f242a"),
      appBar: AppBar(
        backgroundColor: HexColor('#ffc38f'),
        centerTitle: true,
        title: Text(
          'Relapsed?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Text("asddsasaddas"),
                            TextField(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Card(
                        child: Column(
                          children: [
                            Text("asddsasaddas"),
                            TextField(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
