import 'package:flutter/material.dart';
import 'package:my_portfilio/widgets/blog_card.dart';
import 'package:url_launcher/url_launcher.dart';

class Blogs_page extends StatelessWidget {
  const Blogs_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("B L O G S"),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Custom_Card()],
        ),
      ),
    );
  }
}
