import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {

  String days = "250";
  String hours = "14";
  String minutes = "14";
  String seconds = "14";




  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(
          'Days',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
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
