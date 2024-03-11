import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_item.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(children: [
        const SizedBox(height: 20),
        Align(
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close)),
        ),
        for (int i = 0; i < nav_icons.length; i++)
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.all(5),
              leading: Icon(nav_icons[i]),
              title: Text(nav_titles[i]),
            ),
          )
      ]),
    );
  }
}
