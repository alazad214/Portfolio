import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/contact_item.dart';

class Contact_mobile extends StatelessWidget {
  const Contact_mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        alignment: Alignment.center,
        width: screenWidth,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            const Text(
              'Contact Me',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                for (int i = 0;
                    i < contactImage.length & urlContact.length;
                    i++)
                  InkWell(
                    onTap: () async {
                      final Uri url = Uri.parse(urlContact[i]["url"]);
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.white60)),
                      child: Image.asset(
                        contactImage[i]["img"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ],
        ));
  }
}
