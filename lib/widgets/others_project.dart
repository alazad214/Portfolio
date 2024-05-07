import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OthersProject extends StatelessWidget {
  const OthersProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: InkWell(
        onTap: () async {
          final Uri url = Uri.parse(
              "https://drive.google.com/drive/folders/1nvLHpn5lLS8W16T6P3JbziVG2YElkGHU?usp=sharing");
          if (!await launchUrl(url)) {
            throw Exception('Could not launch $url');
          }
        },
        child: const ListTile(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.all(5),
          leading: Icon(
            Icons.work,
            color: Colors.white,
          ),
          title: Text("Project"),
        ),
      ),
    );
  }
}
