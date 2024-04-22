import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  Custom_TextField(
      {super.key,
      this.controller,
      this.onchanged,
      this.hinttext,
      this.maxline});
  final controller;
  final onchanged;
  final hinttext;
  final maxline;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: controller,
        maxLines: maxline,
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: hinttext,
          filled: true,
          fillColor: Colors.white70,
          //enable-->
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide.none),

          //focus-->
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.blue,
                width: 2), // Set border color when the field is focused
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
      ),
    );
  }
}
