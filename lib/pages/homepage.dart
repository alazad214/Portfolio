import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfilio/constants/colors.dart';

import 'package:my_portfilio/Header_section/drawer_mobile.dart';
import 'package:my_portfilio/Header_section/header_desktop.dart';
import 'package:my_portfilio/Header_section/header_logo.dart';
import 'package:my_portfilio/Header_section/header_mobile.dart';
import 'package:my_portfilio/main_section/main_desktop.dart';
import 'package:my_portfilio/main_section/main_mobile.dart';

import 'package:my_portfilio/project_section/project_desktop.dart';
import 'package:my_portfilio/project_section/project_mobile.dart';

import 'package:my_portfilio/skills_section/skills_desktop.dart';
import 'package:my_portfilio/skills_section/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scafoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constaints) {
      return Scaffold(
        key: scafoldkey,
        backgroundColor: AppColor.denim_2,
        endDrawer: constaints.maxWidth >= 550 ? null : DrawerMobile(),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Header---------------->>
              /*  if (constaints.maxWidth >= 650)
                const HeaderDesktop()
              else
                HeaderMobile(
                    onlogotap: () {},
                    onMenutap: () {
                      scafoldkey.currentState!.openEndDrawer();
                    }),
              const SizedBox(
                height: 20,
              ),
              //Main------------------>>
              if (constaints.maxWidth >= 650)
                const MainDesktop()
              else
                const MainMobile(),
              const SizedBox(
                height: 20,
              ),
              //Skills---------------->>
              if (constaints.maxWidth >= 650)
                Skills_desktop()
              else
                Skills_Mobile(),

              const SizedBox(height: 20),
              //projects-------------->>
              if (constaints.maxWidth >= 650)
                Project_Desktop()
              else
                Project_mobile(),
              const SizedBox(height: 20),
              //contract---------------->>*/
              Container(
                alignment: Alignment.center,
                width: screenWidth,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8)),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    for(int i=0; i<5; i++)
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: Colors.white60)),
                      child: Image.asset("assets/contact/fb.png"),
                    )
                  ],
                ),
              ),

              //footer------------------------------------------------------------>
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  child: const Text("Made By - Al Azad 😍"),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
