import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.denim_,
          titleSpacing: 0,
          title: Text(
            data["title"],
            style: const TextStyle(color: Colors.amber, fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: Image.asset(
                      data["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        data["dis"],
                        style: const TextStyle(fontSize: 16),
                      )),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
} /**/
