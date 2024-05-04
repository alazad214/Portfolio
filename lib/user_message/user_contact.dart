import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/contact_item.dart';

class UserContact extends StatelessWidget {
  const UserContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < contactImage.length; i++)
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse(urlContact[i]["url"].toString());
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                child: Image.asset(contactImage[i]["img"].toString()),
              ),
            ),
          )
      ],
    );
  }
}
