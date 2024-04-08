import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer_section extends StatelessWidget {
  const Footer_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse("https://web.facebook.com/alazad214");
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          child: const Text(
            "Made By - Al Azad 😍",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
