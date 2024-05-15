import 'package:flutter/material.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/contact_item.dart';
import '../widgets/custom_richText.dart';

class Contact_desktop extends StatelessWidget {
  const Contact_desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 90.0),
        width: screenWidth,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: AppColor.navy2, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            CustomRichText("Stay", " Connected"),
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
