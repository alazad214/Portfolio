import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/theme_controller.dart';

class Settings_Screen extends StatelessWidget {
  Settings_Screen({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                ' ${themeController.isLightTheme.value ? 'Dark' : 'Light'} theme',
              ),
            ),
            ObxValue(
              (data) => Switch(
                value: themeController.isLightTheme.value,
                onChanged: (val) {
                  themeController.toggleTheme();
                },
              ),
              false.obs,
            ),
          ],
        ),
      ),
    );
  }
}
