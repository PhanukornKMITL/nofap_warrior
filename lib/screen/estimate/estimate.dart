import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/screenlogic/appbar_manager.dart';

class EstimatePage extends StatefulWidget {
  @override
  _EstimatePageState createState() => _EstimatePageState();
}

class _EstimatePageState extends State<EstimatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1f242a"),
      appBar: AppBar(
        backgroundColor: HexColor('#ffc38f'),
        title: Text(
                'How was your day?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.assignment_turned_in),
                            title: Text("I'm doing great", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle:
                                Text('Everything alright.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.assignment_turned_in),
                            title: Text("I'm doing great", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle:
                                Text('Everything alright.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.assignment_turned_in),
                            title: Text("I'm doing great", style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle:
                                Text('Everything alright.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
