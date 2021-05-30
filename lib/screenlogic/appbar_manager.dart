class AppBarManager {
  
  static AppBarManager _instance;

  bool isVisivble = false;

  AppBarManager();

  static AppBarManager getInstance(){
    if(_instance == null) {
          _instance = AppBarManager();
        }
        return _instance;
  }

  void setVisible(bool boolean) {
    isVisivble = boolean;
  }
  
}