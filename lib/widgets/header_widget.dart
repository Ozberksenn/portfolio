import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/configuration.dart';
import 'package:portfolio/pages/home/dialogs/about_me_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/widgets/popup_menu_widget.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_bottom_sheet_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

Widget header() {
  return ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: Get.width,
        height: 28,
        color: blackOpacity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                paddingHorizontal16(),
                popupMenuIcon(),
                paddingHorizontal16(),
                Text(
                  'Finder',
                  style: whiteTitleSmall,
                ),
                paddingHorizontal16(),
                InkWell(
                  onTap: () =>
                      customBottomSheet(children: [aboutMeBottomSheet()]),
                  child: Text(
                    'About Me',
                    style: whiteBodySmall,
                  ),
                ),
                paddingHorizontal16(),
                Text(
                  'Contact',
                  style: whiteBodySmall,
                ),
                paddingHorizontal16(),
                Text(
                  'Projects',
                  style: whiteBodySmall,
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "EN",
                      style: whiteTitleSmall,
                    )),
                paddingHorizontal8(),
                Text(
                  formatDateTime(DateTime.now()),
                  style: whiteBodySmall,
                ),
                paddingHorizontal8()
              ],
            )
          ],
        ),
      ),
    ),
  );
}
