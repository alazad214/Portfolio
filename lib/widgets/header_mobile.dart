import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';
import 'header_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile(
      {super.key, required this.onlogotap, required this.onMenutap});

  final VoidCallback onlogotap;
  final VoidCallback onMenutap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 40, bottom: 0, right: 5, top: 0),
      decoration: HeaderDecoration,
      child: Row(
        children: [
          HeaderLogo(
            ontap: onlogotap,
          ),
          Spacer(),
          IconButton(onPressed: onMenutap, icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
