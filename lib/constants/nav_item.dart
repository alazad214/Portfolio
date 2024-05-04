import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfilio/pages/blogs.dart';
import 'package:my_portfilio/pages/homepage.dart';
import 'package:my_portfilio/pages/settings_screen.dart';
import 'package:my_portfilio/user_message/user_message.dart';

List<String> nav_titles = ["Home", "Blog", "Contact", "Settings"];
List<IconData> nav_icons = [
  Icons.home,
  Icons.web,
  Icons.message_outlined,
  Icons.settings
];
List nav_pages = [
  const HomePage(),
  const Blogs_page(),
  User_Message(),
  const Settings_Screen()
];
