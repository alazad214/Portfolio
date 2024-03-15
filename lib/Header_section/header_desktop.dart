import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_portfilio/Header_section/header_logo.dart';

import '../constants/nav_item.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 80),
      padding: const EdgeInsets.only(left: 30),
      decoration:  BoxDecoration(
          color: Colors.black54,
        borderRadius: BorderRadius.circular(8)
          ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
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
      ),
    );
  }
}
