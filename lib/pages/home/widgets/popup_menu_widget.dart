import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/configuration.dart';

Widget popupMenuIcon() {
  return PopupMenuButton(
      color: dark,
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      position: PopupMenuPosition.under,
      child: Icon(
        Icons.apple,
        size: 18,
        color: white,
      ),
      itemBuilder: (BuildContext btn) {
        return [
          popupItem(title: "About Me"),
          popupItem(title: "Contact"),
          popupItem(title: "Projects"),
        ];
      });
}

PopupMenuItem<dynamic> popupItem({required String title}) {
  return PopupMenuItem(
      height: 30,
      child: SizedBox(
          width: Get.width / 2,
          child: Text(
            title.tr,
            style: whiteBodySmall,
          )));
}
