import 'package:flutter/material.dart';
import 'package:my_portfilio/constants/colors.dart';
import 'package:my_portfilio/Header_section/drawer_mobile.dart';
import 'package:my_portfilio/Header_section/header_desktop.dart';
import 'package:my_portfilio/Header_section/header_mobile.dart';
import 'package:my_portfilio/constants/exitapp.dart';
import 'package:my_portfilio/contact_section/contact_desktop.dart';
import 'package:my_portfilio/contact_section/contact_mobile.dart';
import 'package:my_portfilio/footer_section/footer_.dart';
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
    return WillPopScope(
      onWillPop: () {
        ExitApp().Exit(context);
        return Future.value(false);
      },
      child: LayoutBuilder(builder: (context, constaints) {
        return Scaffold(
          key: scafoldkey,
          backgroundColor: AppColor.navy_,
          endDrawer: constaints.maxWidth >= 550 ? null : const DrawerMobile(),
          body: SafeArea(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //Header---------------->>
                if (constaints.maxWidth >= 650)
                  const HeaderDesktop()
                else
                  HeaderMobile(onMenutap: () {
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
                  const Skills_desktop()
                else
                  const Skills_Mobile(),

                const SizedBox(height: 20),
                //projects-------------->>
                if (constaints.maxWidth >= 650)
                  const Project_Desktop()
                else
                  const Project_mobile(),
                const SizedBox(height: 20),
                //contract---------------->>
                if (constaints.maxWidth >= 650)
                  Contact_desktop()
                else
                  const Contact_mobile(),

                //footer---------->
                const Footer_section()
              ],
            ),
          ),
        );
      }),
    );
  }
}
