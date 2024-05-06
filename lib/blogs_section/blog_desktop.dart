import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/widgets/blog_card.dart';

class BlogDesktop extends StatelessWidget {
  const BlogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Custom_Card(
              imageheight: 250,
              height: 320,
            )),
      );
    });
  }
}
