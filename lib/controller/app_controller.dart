import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppController extends GetxController {
  GetStorage box = Get.put(GetStorage());

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLanguage();
  }

  void checkLanguage() {
    // Kaydedilmiş dilin alınması
    String? lang = box.read('lang');
    // Eğer kaydedilmiş dil yoksa veya boşsa, varsayılan olarak 'en' dilini kullan
    if (lang == null || lang.isEmpty) {
      lang = 'en';
      box.write('lang', lang);
    }
    // Dilin güncellenmesi
    updateLocale(lang);
  }

  void updateLocale(String lang) {
    // Locale nesnesinin oluşturulması
    Locale locale = lang == 'tr' ? const Locale('en') : const Locale('tr');
    // GetX'in locale'nin güncellenmesi
    Get.updateLocale(locale);
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
