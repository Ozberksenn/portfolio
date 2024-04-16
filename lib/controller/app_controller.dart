import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxString selectLanguage = 'tr'.obs;

  void changeLanguage() {
    if (selectLanguage.value == 'tr') {
      selectLanguage.value = 'en';
      Get.updateLocale(Locale(selectLanguage.value));
    } else {
      selectLanguage.value = 'tr';
      Get.updateLocale(Locale(selectLanguage.value));
    }
  }
}
