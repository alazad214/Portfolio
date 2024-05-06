import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  fontFamily: "Anta",
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.amber,
    disabledColor: Colors.grey,
  ),
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  fontFamily: "Anta",
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    disabledColor: Colors.grey,
  ),
);
