import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/screenlogic/appbar_manager.dart';
import 'package:nofap_warriors/shared/clickable_card.dart';

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
                child: clickableCard(Icon(Icons.assignment_turned_in),"I'm doing great", 'Everything alright.', ()=> print("1")),
                
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: clickableCard(Icon(Icons.warning_rounded),"I have hard time to pass", "I have urge today.", ()=> print("2")),
                
              ),
              SizedBox(height: 20.0,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: clickableCard(Icon(Icons.replay),"I want to try again", 'Relapsed.', ()=> print("3")),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
