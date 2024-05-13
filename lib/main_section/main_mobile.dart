import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
          color: AppColor.navy2, borderRadius: BorderRadius.circular(8)),
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
            onPressed: () async {
              final Uri url = Uri.parse(
                  "https://drive.google.com/drive/folders/1L_zg1wVp60ObEX-RnmKS6LilEeeIRDt-?usp=sharing");
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            child: const Text("Download Resume"),
          )
        ],
      ),
    );
  }
}
