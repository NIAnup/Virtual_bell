// import 'package:flutter/cupertino.dart';
// import 'package:virtual.bell/widget_bg/mytheme_preference.dart';
//
// class ModelTheme extends ChangeNotifier{
//   late bool _isDark;
//   late MythemePreference _preference;
//   bool get isDark => _isDark;
//   ModelTheme(){
//     _isDark=false;
//     _preference= MythemePreference();
//     getPreference();
//
//   }
//   set isDark(bool value){
//     _isDark=value;
//     _preference.setTheme(value);
//     notifyListeners();
//   }
//
//
//   getPreference()async{
//     _isDark= await _preference.getTheme();
//     notifyListeners();
//   }
// }