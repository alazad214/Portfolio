import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/platform.dart';

class Skills_Mobile extends StatelessWidget {
  const Skills_Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        width: screenWidth,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Platform',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 5,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < platformItem.length; i++)
                    Container(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, bottom: 20, top: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              platformItem[i]["img"],
                              width: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              platformItem[i]["title"],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ))
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Skills',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
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
            ),
            const SizedBox(height: 20),
          ],
        ));
  }
}
