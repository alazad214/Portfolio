import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/widgets/blog_card.dart';

class BlogDesktop extends StatelessWidget {
  const BlogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 600,
            child: Custom_Card(height: 350,imageheight: 280,),
          ),
        ],
      ),
    );
  }
}
