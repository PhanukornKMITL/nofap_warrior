import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:nofap_warriors/screen/estimate/estimate.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeFragment extends StatefulWidget {

  Function changeSubScreen;
  HomeFragment({this.changeSubScreen});
  

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  String days = "250";
  String hours = "14";
  String minutes = "14";
  String seconds = "14";
  Timer _timer;
  bool change = false;
  

  //DateTime lasted = DateTime.utc(2021, DateTime.may, 28);

  @override
  void initState() {
    super.initState();

    Duration difference;
    DateTime currentTime;
    DateTime lastedTime;
    // sets first value

    // defines a timer
    lastedTime = DateTime.now();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        currentTime = DateTime.now();
        difference = currentTime.difference(lastedTime);
        days = difference.inDays.toString();
        hours = (difference.inHours % 24).toString();
        minutes = (difference.inMinutes % 60).toString();
        seconds = (difference.inSeconds % 60).toString();

        //print("Days ${difference.inDays} Hours ${difference.inHours % 24} minutes ${difference.inMinutes % 60} seconds ${difference.inSeconds % 60}");
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  change ? EstimatePage(): Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Remember Your Goal',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        SizedBox(
          height: 90.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 97.0,),
            Text(
              'Days',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
               //Navigator.pushNamed(context, '/estimate');
               setState(() {
                 change = true;
               });
              },
              elevation: 2.0,
              fillColor: HexColor('#ffc38f'),
              child: Icon(
                Icons.calendar_today_outlined,
                size: 20.0,
              ),
             
              
              shape: CircleBorder(),
            ),
          ],
        ),
        Text(
          days,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  hours,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'hours',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20.0),
            Column(
              children: <Widget>[
                Text(
                  minutes,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'minutes',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20.0),
            Column(
              children: <Widget>[
                Text(
                  seconds,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'seconds',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 20.0,
                color: HexColor('#a9998e'),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('asdsa'),
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.white,
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
        ),
      ],
    );
    
  }
}
