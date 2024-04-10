import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/configuration.dart';

Widget bottom() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    padding: const EdgeInsets.all(12.0),
    width: Get.width / 4,
    height: 60,
    decoration: BoxDecoration(
        color: blackOpacity, borderRadius: BorderRadius.circular(18.0)),
  );
}
