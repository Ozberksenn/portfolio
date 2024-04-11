import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> customBottomSheet({List<Widget>? children}) {
  return Get.dialog(
      barrierColor: Colors.black26,
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children ?? []));
}
