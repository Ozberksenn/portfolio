// app colors :

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color white = Colors.white;
Color black = Colors.black;
const dark = Color.fromRGBO(38, 36, 43, 1);
Color greyBorder = const Color.fromARGB(255, 216, 210, 210);
var blackOpacity = Colors.black.withOpacity(0.2);
var grey = const Color.fromRGBO(114, 108, 102, 1);
var blue = Colors.blue;

// fonts
var whiteTitleSmall = Get.textTheme.titleSmall!.copyWith(color: white);
var whiteTitleLarge = Get.textTheme.titleLarge!.copyWith(color: white);
var whiteBodySmall = Get.textTheme.bodySmall!.copyWith(color: white);
var greyBodySmall = Get.textTheme.bodySmall!.copyWith(color: grey);
var customIconText =
    Get.textTheme.titleSmall!.copyWith(color: white, fontSize: 12);
var whiteheadlineSmall = Get.textTheme.headlineSmall!.copyWith(color: white);

// links :
String linkedinUrl = "https://www.linkedin.com/in/ozberksen/";
String githubUrl = "https://github.com/Ozberksenn";
String resumeUrl =
    "https://drive.google.com/file/d/1ylgEmtN--zlSa16HTLQlpKtd6QioFG6V/view?usp=sharing";
String email = "ozberksenn@gmail.com";
String phone = "+905340526699";
String backgrounImage =
    'https://ucarecdn.com/4556dc02-e7dd-4616-a725-2eb65bc9c4f2/background.png';
String mobileBackgroundImage =
    'https://ucarecdn.com/d8bd1d23-a6c4-410a-b249-32b2c31e554a/iphone.jpeg';

// icons

final appIcons = <String, IconData>{
  "shopkeeper": CupertinoIcons.shopping_cart,
  'chatSocket': CupertinoIcons.chat_bubble_2_fill,
  'bereal': CupertinoIcons.person_2_alt,
  'restaurant': Icons.restaurant,
  'chatApp': CupertinoIcons.chat_bubble_text_fill,
  'list': CupertinoIcons.today,
  'file': CupertinoIcons.doc,
  'survey': CupertinoIcons.doc_append
};
