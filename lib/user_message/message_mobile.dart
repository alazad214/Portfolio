import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/widgets/custom_textfield.dart';

class messageMobile extends StatelessWidget {
  const messageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const Divider(), Custom_TextField()],
    );
  }
}
