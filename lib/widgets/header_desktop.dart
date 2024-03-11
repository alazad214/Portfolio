import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/styles/styles.dart';
import 'package:my_portfilio/widgets/header_logo.dart';

import '../constants/nav_item.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      decoration: HeaderDecoration,
      child: Row(
        children: [
          HeaderLogo(ontap: () {}),
          const Spacer(),
          for (int i = 0; i < nav_titles.length; i++)
            TextButton(
                onPressed: () {},
                child: Text(
                  nav_titles[i],
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ))
        ],
      ),
    );
  }
}
