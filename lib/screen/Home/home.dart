import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/screen/estimate/estimate.dart';
import 'package:nofap_warriors/screen/home/subscreen/homefragment.dart';

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  bool appbarVisible = false;
  static  List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    Text(
      'Index 1: Business',
      
    ),
    Text(
      'Index 2: School',
      
    ),
    Text(
      'Index 3: Settings',
    ),
    EstimatePage(),
    
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void visibleAppBar(bool boolean){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarVisible ? AppBar(backgroundColor: HexColor('#ffc38f'),) : null,
        backgroundColor: HexColor("#1f242a"),
        body: SafeArea(
    child: SingleChildScrollView(
          child: Center(
        child: _widgetOptions.elementAt( _selectedIndex),
      ),
    ),
        ),
         bottomNavigationBar: BottomNavigationBar(
    items:  <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: HexColor('#ffc38f'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Community',
       backgroundColor: HexColor('#ffc38f'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'Notification',
        backgroundColor: HexColor('#ffc38f'),
        
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined),
        label: 'Settings',
        backgroundColor: HexColor('#ffc38f'),
       
      ),
    ],
    currentIndex:  _selectedIndex,
    selectedItemColor: HexColor("#1f242a"),
    onTap: onItemTapped,
        ),
      );
  }
}
