import 'package:flutter/material.dart';
import 'package:my_portfilio/constants/project_item.dart';

class Project_Card extends StatelessWidget {
  const Project_Card({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      height: 330,
      width: 270,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 270,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 0),
            child: Text(
              project.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 5),
            child: Text(
              project.subtitle,
              style: TextStyle(
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
                        onPressed: () {},
                        child: Text(
                          'source',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'source',
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
