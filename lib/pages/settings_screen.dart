import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/theme_controller.dart';

class Settings_Screen extends StatelessWidget {
  Settings_Screen({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constants) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("Theme"),
            titleSpacing: 0,
          ),
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: ListView(
                children: [
                  SizedBox(
                    height: h / 3,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ObxValue(
                          (data) => Switch(
                            value: themeController.isLightTheme.value,
                            onChanged: (val) {
                              themeController.toggleTheme();
                            },
                          ),
                          false.obs,
                        ),
                        const SizedBox(width: 10),
                        Obx(
                          () => Text(
                            ' ${themeController.isLightTheme.value ? 'Light' : 'Dark'} theme',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
    });
  }
}
