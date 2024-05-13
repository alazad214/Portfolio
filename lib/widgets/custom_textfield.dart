import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  Custom_TextField(
      {super.key,
      this.hinttext,
      this.line,
      this.width,
      this.controller,
      this.onchanged,
      this.validator});

  final String? hinttext;
  final int? line;
  final double? width;
  final controller;
  final onchanged;
  final validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: const TextStyle(color: Colors.white),
        maxLines: line,
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.white60, fontSize: 20),
          filled: false,
          fillColor: Colors.white,
          //enable-->
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white12,
            ),
          ),

          //focus-->
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2), // Set border color when the field is focused
          ),

          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: 2), // Set border color when the field is focused
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2), // Set border color when the field is focused
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70,
                width: 2), // Set border color when the field is focused
          ),
        ),
      ),
    );
  }
}
