import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/platform.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      color: Colors.blueGrey,
      padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Platform',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < platformItem.length; i++)
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        platformItem[i]["img"],
                        width: 26.0,
                      ),
                      title: Text(platformItem[i]["title"]),
                    ),
                  )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Skills',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (int i = 0; i < skillItems.length; i++)
                    Chip(
                      label: Text(skillItems[i]["title"]),
                      avatar: Image.asset(skillItems[i]["img"]),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
