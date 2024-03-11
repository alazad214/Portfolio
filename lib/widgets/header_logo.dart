import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key, this.ontap});

  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: const Text(
        'Al',
        style: TextStyle(
            color: Colors.indigoAccent,
            fontSize: 18,
            fontWeight: FontWeight.w800,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
