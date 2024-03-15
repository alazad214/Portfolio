import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfilio/pages/splash.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Al Azad',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Anta"),
        home: const Splash());
  }
}
