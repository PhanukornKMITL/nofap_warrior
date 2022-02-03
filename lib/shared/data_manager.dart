import 'package:shared_preferences/shared_preferences.dart';

class DataManager {
  void SaveTimeStreak() async {
    print('asdasdsasa');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Streak", "xas");
  }

  void GetTimeStreak() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String data = prefs.getString("Streak");
    print("Get $data");
  }
}
