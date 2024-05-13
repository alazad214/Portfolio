import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomRichText(text1, text2) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: text1,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),
        TextSpan(
          text: text2,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              fontSize: 22),
        ),
      ],
    ),
  );
}
