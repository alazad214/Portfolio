import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class MessageDesktop extends StatelessWidget {
  const MessageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          child: Custom_TextField(),
        ),
      ],
    );
  }
}
