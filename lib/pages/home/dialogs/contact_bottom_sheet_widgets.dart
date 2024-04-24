import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/home/dialogs/about_me_bottom_sheet_widget.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_bottom_sheet_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/custom_circular_icon_widget.dart';
import 'bottom_sheet_header_widget.dart';

Widget contactbottomSheet() {
  return Material(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      width: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
          ? Get.width / 1.2
          : Get.width / 3.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: dark,
          border: Border.all(width: 0.2, color: greyBorder)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bottomHeader(title: "Contact"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
                      ? Get.width / 1.6
                      : Get.width / 5,
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                  "https://ucarecdn.com/f3e7823b-5e1b-4335-b00c-c5677977bf9e/me.png"))),
                    ),
                    title: Text(
                      "Özberk Şen",
                      style: whiteTitleLarge,
                    ),
                    subtitle: Text(
                      "Mobile Developer".tr,
                      style: whiteTitleSmall,
                    ),
                  ),
                ),
                paddingVertical16(),
                SizedBox(
                  width: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
                      ? Get.width / 1.6
                      : Get.width / 6,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customCircularIcon(
                            onTap: () => launchPhone(phone),
                            title: "call",
                            icon: CupertinoIcons.phone_fill),
                        customCircularIcon(
                            onTap: () => launchEmail(email),
                            title: "mail",
                            icon: CupertinoIcons.mail),
                        customCircularIcon(
                            title: "share", icon: CupertinoIcons.share),
                      ]),
                ),
                paddingVertical32(),
                Text(
                  "phone  +90 534 052 66 99",
                  style: whiteTitleSmall,
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                Text(
                  "email  ozberksenn@gmail.com",
                  style: whiteTitleSmall,
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                Text(
                  "linkedin  https://linkedin",
                  style: whiteTitleSmall,
                  textAlign: TextAlign.center,
                ),
                paddingVertical32(),
                button(
                    title: "About Me",
                    onTap: () {
                      Get.back();
                      customBottomSheet(children: [aboutMeBottomSheet()]);
                    })
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
