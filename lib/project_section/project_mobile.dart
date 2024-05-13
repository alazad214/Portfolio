import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/project_section/project_card.dart';
import 'package:my_portfilio/utils/colors.dart';

import '../utils/project_item.dart';
import '../widgets/custom_richText.dart';

class Project_mobile extends StatelessWidget {
  const Project_mobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColor.navy2, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          CustomRichText("My", " Projects"),
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
