import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({super.key, this.ontap});

  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Text(
          "Portfolio..",
          style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
