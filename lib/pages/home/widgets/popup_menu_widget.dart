import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/home/dialogs/about_me_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/dialogs/contact_bottom_sheet_widgets.dart';
import 'package:portfolio/pages/home/dialogs/project_bottom_sheet_widget.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/widgets/custom_bottom_sheet_widget.dart';

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
          popupItem(
              title: "About Me",
              onTap: () => customBottomSheet(children: [aboutMeBottomSheet()])),
          popupItem(
              title: "Contact",
              onTap: () => customBottomSheet(children: [contactbottomSheet()])),
          popupItem(
              title: "Projects",
              onTap: () => customBottomSheet(children: [projectBottomSheet()])),
        ];
      });
}

PopupMenuItem<dynamic> popupItem(
    {required String title, void Function()? onTap}) {
  return PopupMenuItem(
      onTap: onTap,
      height: 30,
      child: SizedBox(
          width: Get.width / 2,
          child: Text(
            title.tr,
            style: whiteBodySmall,
          )));
}
