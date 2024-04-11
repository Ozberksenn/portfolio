import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../../../utils/configuration.dart';

Widget contactbottomSheet() {
  return Material(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      width: Get.width / 3.4,
      height: Get.height / 2,
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
                paddingVertical8(),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(CupertinoIcons.phone),
                  Icon(CupertinoIcons.mail)
                ]),
                paddingVertical16(),
                Text(
                  "phone  +90 534 052 66 99",
                  style: whiteBodySmall,
                  textAlign: TextAlign.center,
                ),
                paddingVertical8(),
                Divider(),
                paddingVertical8(),
                Text(
                  "email  ozberksenn@gmail.com",
                  style: whiteBodySmall,
                  textAlign: TextAlign.center,
                ),
                paddingVertical8(),
                Divider(),
                paddingVertical8(),
                Text(
                  "linkedin  https://linkedin",
                  style: whiteBodySmall,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget bottomHeader({String? title}) {
  return Container(
      width: Get.width,
      height: 28,
      decoration: BoxDecoration(
          color: Colors.black12.withOpacity(0.1),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        size: 14,
                        color: Colors.redAccent,
                      ),
                    ),
                    paddingHorizontal8(),
                    Icon(
                      CupertinoIcons.circle_filled,
                      size: 14,
                      color: greyBorder,
                    ),
                    paddingHorizontal8(),
                    Icon(
                      CupertinoIcons.circle_filled,
                      size: 14,
                      color: greyBorder,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  title ?? "",
                  style: whiteTitleSmall,
                ),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ));
}
