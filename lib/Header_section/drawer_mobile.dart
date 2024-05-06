import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/colors.dart';
import '../utils/nav_item.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.color_3,
      child: ListView(children: [
        const SizedBox(height: 20),
        Align(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close)),
        )),
        for (int i = 0; i < nav_icons.length; i++)
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => nav_pages[i]));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                contentPadding: const EdgeInsets.all(5),
                leading: Icon(
                  nav_icons[i],
                  color: Colors.white,
                ),
                title: Text(nav_titles[i]),
              ),
            ),
          ),
        Container(
          padding: const EdgeInsets.only(left: 30),
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
              style: TextStyle(fontSize: 15, color: Colors.amberAccent),
            ),
          ),
        ),
      ]),
    );
  }
}
