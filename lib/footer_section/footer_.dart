import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer_section extends StatelessWidget {
  const Footer_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        child: const Text(
          "Made By - Al Azad 😍",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
