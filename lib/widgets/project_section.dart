import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/widgets/project_card.dart';

import '../constants/project_item.dart';

class Project_secTion extends StatelessWidget {
  const Project_secTion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
