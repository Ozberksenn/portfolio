import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/custom_circular_icon_widget.dart';
import 'bottom_sheet_header_widget.dart';

Widget contactbottomSheet() {
  return Material(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      width: Get.width / 3.4,
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
                  width: Get.width / 6,
                  child: ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/96706849?v=4"))),
                    ),
                    title: Text(
                      "Özberk Şen",
                      style: whiteTitleLarge,
                    ),
                    subtitle: Text(
                      "Mobile Developer",
                      style: whiteTitleSmall,
                    ),
                  ),
                ),
                paddingVertical16(),
                SizedBox(
                  width: Get.width / 6,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customCircularIcon(
                            title: "call", icon: CupertinoIcons.phone_fill),
                        customCircularIcon(
                            title: "mail", icon: CupertinoIcons.mail),
                        customCircularIcon(title: "web", icon: Icons.language),
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
                // todo : buton widgeta alınabilir. !
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2.0),
                    decoration: BoxDecoration(
                        color: grey, borderRadius: BorderRadius.circular(6.0)),
                    child: Text(
                      "About Me",
                      style: whiteTitleSmall,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}