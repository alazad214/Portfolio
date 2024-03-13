import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenSize.height/3,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        children: [
          Image.asset(
            "assets/image/developer.png",
            width: screenWidth,
          ),
          const SizedBox(height: 20),
          const Text(
            "Hello, \nI'm Al Azad\nI'm Flutter Developer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)),
            child: const Text("Download Resume"),
          )
        ],
      ),
    );
  }
}
