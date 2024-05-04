import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Blogs_page extends StatelessWidget {
  const Blogs_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    final Uri url =
                    Uri.parse("https://blogrider.netlify.app/#/minified:G3");
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: const Text(
                    'source',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
