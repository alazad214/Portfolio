import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80.0),
      height: screenSize.height / 2,
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(8)),
      constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 900),
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
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(
                      "https://drive.google.com/drive/folders/1WYyG-5oWbxWgctSbz1oF8byaAz63f7Hg?usp=sharing");
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
