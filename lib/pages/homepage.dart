import 'package:flutter/material.dart';
import 'package:my_portfilio/constants/colors.dart';
import 'package:my_portfilio/constants/nav_item.dart';
import 'package:my_portfilio/styles/styles.dart';
import 'package:my_portfilio/widgets/drawer_mobile.dart';
import 'package:my_portfilio/widgets/header_desktop.dart';
import 'package:my_portfilio/widgets/header_logo.dart';
import 'package:my_portfilio/widgets/header_mobile.dart';

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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
//Header------------------------------------------------------------>>
            if (constaints.maxWidth >= 550)
              const HeaderDesktop()
            else
              HeaderMobile(
                  onlogotap: () {},
                  onMenutap: () {
                    scafoldkey.currentState!.openEndDrawer();
                  }),
//main------------------------------------------------------------>>
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              height: screenSize.height / 1.2,
              constraints: BoxConstraints(maxHeight: 350),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hello, \nI'm Al Azad\nI'm Flutter Developer",style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,

                      ),),
                      ElevatedButton(onPressed: () {}, child: Text("My Resume"))
                    ],
                  ),
                  Image.asset(
                    "assets/image/developer.png",
                    width: screenWidth / 2,
                  )
                ],
              ),
            ),

//skills------------------------------------------------------------>
            Container(
              height: 500,
              width: double.maxFinite,
            ),

//projects--------------------------------------------------------->
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

//contract---------------------------------------------------------->
            Container(
              height: 500,
              width: double.maxFinite,
            ),

//footer------------------------------------------------------------>
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
