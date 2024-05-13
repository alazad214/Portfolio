import 'package:flutter/material.dart';
import 'package:my_portfilio/user_message/message_desktop.dart';
import 'package:my_portfilio/user_message/message_mobile.dart';
import 'package:my_portfilio/utils/colors.dart';
import 'package:my_portfilio/Header_section/drawer_mobile.dart';
import 'package:my_portfilio/Header_section/header_desktop.dart';
import 'package:my_portfilio/Header_section/header_mobile.dart';
import 'package:my_portfilio/utils/exitapp.dart';
import 'package:my_portfilio/contact_section/contact_desktop.dart';
import 'package:my_portfilio/contact_section/contact_mobile.dart';
import 'package:my_portfilio/footer_section/footer_.dart';
import 'package:my_portfilio/main_section/main_desktop.dart';
import 'package:my_portfilio/main_section/main_mobile.dart';
import 'package:my_portfilio/project_section/project_desktop.dart';
import 'package:my_portfilio/project_section/project_mobile.dart';
import 'package:my_portfilio/skills_section/skills_desktop.dart';
import 'package:my_portfilio/skills_section/skills_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scafoldkey = GlobalKey<ScaffoldState>();
  final scrollcontroller = ScrollController();
  final List<GlobalKey> navBarKey = List.generate(4, (index) => GlobalKey());

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
          backgroundColor: AppColor.bgcolor,
          endDrawer: constaints.maxWidth >= 650
              ? null
              : DrawerMobile(onItemTap: (int navIndex) {
                  scafoldkey.currentState!.closeEndDrawer();
                  scrollToSection(navIndex);
                }),
          body: SafeArea(
            child: SingleChildScrollView(
              controller: scrollcontroller,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    key: navBarKey.first,
                    height: 30,
                  ),
                  //HEADER===>>
                  if (constaints.maxWidth >= 650)
                    HeaderDesktop(
                      onNavMenuTap: (int navIndex) {
                        scrollToSection(navIndex);
                      },
                    )
                  else
                    HeaderMobile(onMenutap: () {
                      scafoldkey.currentState!.openEndDrawer();
                    }),
                  const SizedBox(
                    height: 20,
                  ),
                  //MAIN SECTION===>>
                  if (constaints.maxWidth >= 650)
                    const MainDesktop()
                  else
                    const MainMobile(),
                  const SizedBox(
                    height: 20,
                  ),

                  //SKILLS SECTION===>>
                  Container(
                    key: navBarKey[1],
                    child: Column(
                      children: [
                        if (constaints.maxWidth >= 650)
                          const Skills_desktop()
                        else
                          const Skills_Mobile(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                  //PROJECTS SECTION===>>
                  Container(
                    key: navBarKey[2],
                    child: Column(
                      children: [
                        if (constaints.maxWidth >= 650)
                          const Project_Desktop()
                        else
                          const Project_mobile(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),

                  //Message SECTION===>>
                  Column(
                    children: [
                      if (constaints.maxWidth >= 650)
                        const MessageDesktop()
                      else
                        const MessageMobile(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //CONTACT SECTION===>>
                  Container(
                    key: navBarKey[3],
                    child: Column(
                      children: [
                        if (constaints.maxWidth >= 650)
                          const Contact_desktop()
                        else
                          const Contact_mobile(),
                      ],
                    ),
                  ),

                  //footer---------->
                  const Footer_section()
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      _launchURL();
      return;
    }
    final key = navBarKey[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

void _launchURL() async {
  const url = 'https://blogrider.netlify.app/#/minified:G3';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
