import 'package:flutter/cupertino.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = 'ar';

  void changeLanguage(String langCode){
    if(langCode == appLanguage){
      return ;
    }
    appLanguage = langCode;
    notifyListeners();
  }

}