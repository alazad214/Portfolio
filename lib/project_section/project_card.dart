import 'package:flutter/material.dart';
import 'package:my_portfilio/constants/project_item.dart';
import 'package:url_launcher/url_launcher.dart';

class Project_Card extends StatelessWidget {
  Project_Card({super.key, required this.project});
  final ProjectUtils project;


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      height: 300,
      width: 270,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset(
              project.image,
              height: 140,
              width: 270,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 0),
            child: Text(
              project.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 5),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
            color: Colors.blueGrey,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(project.source.toString());
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: const Text(
                          'source',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'preview',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
