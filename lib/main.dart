import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Al Azad',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage());
  }
}
