import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();
  static final lighTAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.black,size: 24),
     );
    static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: Colors.black,size: 24),
  );
}
