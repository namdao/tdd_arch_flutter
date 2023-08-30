import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.blueGrey,
    elevation: 0,
    centerTitle: true,
    // iconTheme: IconThemeData(color: Color(0XFF8B8B8B)),
    titleTextStyle:
        TextStyle(color: Color.fromRGBO(247, 204, 21, 1), fontSize: 18),
  );
}
