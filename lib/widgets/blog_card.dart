import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_portfilio/pages/blog_details.dart';

import '../utils/blog_item.dart';

class Custom_Card extends StatelessWidget {
  Custom_Card({super.key});
  final controller = Get.put(BlogController());
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 20,
      children: [
        SizedBox(
          child: ListView.builder(
              itemCount: controller.Blog_Item.length,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) {
                final data = controller.Blog_Item[index];
                return InkWell(
                  onTap: () {
                    Get.to(DetailsScreen(data: data));
                  },
                  child: Container(
                    height: 220,
                    width: 300,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                            width: double.infinity,
                            child: Image.asset(
                              data["image"],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(
                              data["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
