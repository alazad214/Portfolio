import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/blogs.dart';
import 'package:my_portfilio/pages/homepage.dart';
import 'package:my_portfilio/pages/user_message.dart';

List<String> nav_titles = ["Home", "Blog", "Message"];
List<IconData> nav_icons = [Icons.home, Icons.web, Icons.message_outlined];
List nav_pages = [
  HomePage(),
  Blogs_page(),
  User_Message(),
];
