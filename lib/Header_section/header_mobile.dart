import 'package:flutter/material.dart';

import 'header_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onMenutap});

  final VoidCallback onMenutap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.only(left: 20, bottom: 0, right: 10, top: 0),
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(8)),
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
