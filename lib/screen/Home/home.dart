import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/screen/Home/subscreen/settingfragment.dart';
import 'package:nofap_warriors/screen/estimate/estimate.dart';
import 'package:nofap_warriors/screen/home/subscreen/homefragment.dart';
import 'package:nofap_warriors/services/auth.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool appbarVisible = false;
  final PageStorageBucket bucket = PageStorageBucket();
  int _currentIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    SettingFragment(),
    EstimatePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _currentIndex = index;
    });
  }

  void visibleAppBar(bool boolean) {
    setState(() {
      appbarVisible = boolean;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1f242a"),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _widgetOptions,
          //child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: HexColor('#ffc38f'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Diary',
            backgroundColor: HexColor('#ffc38f'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'Chart',
            backgroundColor: HexColor('#ffc38f'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Settings',
            backgroundColor: HexColor('#ffc38f'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor("#1f242a"),
        onTap: onItemTapped,
      ),
    );
  }
}
