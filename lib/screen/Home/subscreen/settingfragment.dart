import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nofap_warriors/services/auth.dart';
import 'package:nofap_warriors/shared/data_manager.dart';

class SettingFragment extends StatefulWidget {
  @override
  _SettingFragmentState createState() => _SettingFragmentState();
}

class _SettingFragmentState extends State<SettingFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.only(top: 25.0),
      child: Column(
        
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: HexColor("#20252b"),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () async {
                //await AuthService().signOut();
                DataManager dataManager = new DataManager();
                dataManager.SaveTimeStreak();
              },
              child: Text(
                'Sign out',
                style: TextStyle(
                  color: HexColor('#dddcdf'),
                ),
              )),
              SizedBox(
                height: 20.0,
              ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: HexColor("#20252b"),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onPressed: () async {
                //await AuthService().signOut();
                DataManager dataManager = new DataManager();
                dataManager.GetTimeStreak();
              },
              child: Text(
                'Get',
                style: TextStyle(
                  color: HexColor('#dddcdf'),
                ),
              )),
        ],
      ),
    );
  }
}
