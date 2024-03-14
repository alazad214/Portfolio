import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/platform.dart';

class Skills_desktop extends StatelessWidget {
  const Skills_desktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        width: screenWidth,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 80.0),
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
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < platformItem.length; i++)
                    Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
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
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              platformItem[i]["title"],
                              style: const TextStyle(color: Colors.white),
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
