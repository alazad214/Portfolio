import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfilio/constants/colors.dart';
import 'package:my_portfilio/constants/nav_item.dart';
import 'package:my_portfilio/constants/platform.dart';
import 'package:my_portfilio/constants/project_item.dart';
import 'package:my_portfilio/styles/styles.dart';
import 'package:my_portfilio/widgets/drawer_mobile.dart';
import 'package:my_portfilio/widgets/header_desktop.dart';
import 'package:my_portfilio/widgets/header_logo.dart';
import 'package:my_portfilio/widgets/header_mobile.dart';
import 'package:my_portfilio/widgets/main_desktop.dart';
import 'package:my_portfilio/widgets/main_mobile.dart';
import 'package:my_portfilio/widgets/project_card.dart';
import 'package:my_portfilio/widgets/project_section.dart';
import 'package:my_portfilio/widgets/skills.dart';

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
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constaints.maxWidth >= 550 ? null : DrawerMobile(),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Header---------------->>
              if (constaints.maxWidth >= 550)
                const HeaderDesktop()
              else
                HeaderMobile(
                    onlogotap: () {},
                    onMenutap: () {
                      scafoldkey.currentState!.openEndDrawer();
                    }),
              //Main------------------>>
              if (constaints.maxWidth >= 550)
                const MainDesktop()
              else
                const MainMobile(),

              //Skills---------------->>
              const Skills(),

              const SizedBox(height: 20),
              //projects-------------->>
              const Project_secTion(),

              //contract---------------->>
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              //footer------------------------------------------------------------>
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      );
    });
  }
}
