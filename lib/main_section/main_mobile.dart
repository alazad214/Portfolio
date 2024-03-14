import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(

      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(8)),
      constraints: const BoxConstraints(minHeight: 450),
      child: Column(
        children: [
          Image.asset(
            "assets/image/azad_bg.png",
            width: screenWidth / 2,
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
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            child: const Text("Download Resume"),
          )
        ],
      ),
    );
  }
}
