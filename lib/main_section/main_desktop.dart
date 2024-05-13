import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 90),
      height: screenSize.height / 2,
      width: screenWidth,
      decoration: BoxDecoration(
          color: AppColor.navy2, borderRadius: BorderRadius.circular(8)),
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello, \nI'm Al Azad\nI'm Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () async {
                  final Uri url = Uri.parse(
                      "https://drive.google.com/drive/folders/1P4DLOuuDYIj-48g--uIU4Cb-UicTWr-J?usp=sharing");
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("Download Resume"),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/image/azad_bg.png",
            width: screenWidth / 4,
            height: screenSize.height / 2,
          )
        ],
      ),
    );
  }
}
