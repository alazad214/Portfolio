import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile(
      {super.key, required this.onlogotap, required this.onMenutap});

  final VoidCallback onlogotap;
  final VoidCallback onMenutap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.only(left: 20, bottom: 0, right: 10, top: 0),
      decoration: const BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: Row(
          children: [
            HeaderLogo(
              ontap: onlogotap,
            ),
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
