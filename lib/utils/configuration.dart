// app colors :

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color white = Colors.white;
Color black = Colors.black;
Color grey = const Color.fromARGB(255, 216, 210, 210);
var blackOpacity = Colors.black.withOpacity(0.2);

// fonts
var whiteTitleSmall = Get.textTheme.titleSmall!.copyWith(color: white);
var whiteBodySmall = Get.textTheme.bodySmall!.copyWith(color: white);
var customIconText =
    Get.textTheme.titleSmall!.copyWith(color: white, fontSize: 12);
var whiteheadlineSmall = Get.textTheme.headlineSmall!.copyWith(color: white);
