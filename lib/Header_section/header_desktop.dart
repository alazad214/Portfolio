import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/Header_section/header_logo.dart';
import 'package:my_portfilio/utils/colors.dart';

import '../utils/nav_item.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      height: 70,
      width: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 90),
      decoration: BoxDecoration(
          color: AppColor.navy2,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 900,
          ),
          child: Row(
            children: [
              HeaderLogo(ontap: () {}),
              const Spacer(),
              for (int i = 0; i < nav_titles.length; i++)
                TextButton(
                    onPressed: () {
                      onNavMenuTap(i);
                    },
                    child: Text(
                      nav_titles[i],
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
