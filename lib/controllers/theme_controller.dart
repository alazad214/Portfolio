import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final isLightTheme = true.obs;
  late SharedPreferences sharedPreferences;

  @override
  void onInit() {
    super.onInit();
    loadThemeFromPrefs();
  }

  Future<void> loadThemeFromPrefs() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLightTheme.value = sharedPreferences.getBool('isLightTheme') ?? true;
    updateTheme();
  }

  void updateTheme() {
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }

  void toggleTheme() {
    isLightTheme.value = !isLightTheme.value;
    sharedPreferences.setBool('isLightTheme', isLightTheme.value);
    updateTheme();
  }
}