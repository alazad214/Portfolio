import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/blogs.dart';
import 'package:my_portfilio/pages/homepage.dart';
import 'package:my_portfilio/pages/settings_screen.dart';
import 'package:my_portfilio/user_message/user_message.dart';

List<String> nav_titles = ["Home", "Contact", "Blog", "Settings"];
List<IconData> nav_icons = [
  Icons.home,
  Icons.web,
  Icons.message_outlined,
  Icons.settings
];
List nav_pages = [
  const HomePage(),
  UserMessage(),
  const Blogs_page(),
  Settings_Screen()
];
