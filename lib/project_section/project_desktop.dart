import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/project_section/project_card.dart';

import '../utils/project_item.dart';

class Project_Desktop extends StatelessWidget {
  const Project_Desktop({super.key});

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
        children: [
          const Text(
            'Projects',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  Project_Card(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
