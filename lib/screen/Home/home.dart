import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
  
  static  List<Widget> _widgetOptions = <Widget>[
    HomeFragment(),
    Text(
      'Index 1: Business',
      
    ),
    Text(
      'Index 2: School',
      
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
                            .signOut();
                      },
                      child: Text(
                        'Sign out',
                        style: TextStyle(
                          color: HexColor('#dddcdf'),
                        ),
                      )),
    EstimatePage(),
    
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void visibleAppBar(bool boolean){
    setState(() {
      appbarVisible = boolean;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
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
