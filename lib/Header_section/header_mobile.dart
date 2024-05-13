import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'header_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onMenutap});

  final VoidCallback onMenutap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColor.navy2, borderRadius: BorderRadius.circular(8)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Row(
          children: [
            const HeaderLogo(),
            const Spacer(),
            IconButton(
                onPressed: onMenutap,
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
