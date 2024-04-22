import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppController extends GetxController {
  final box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    box.write('lang', 'en');
  }

  void changeLanguage(lang) {
    if (lang == 'en') {
      Get.updateLocale(const Locale('en'));
      box.write('lang', 'tr');
    } else {
      Get.updateLocale(const Locale('tr'));
      box.write('lang', 'en');
    }
  }
}
