import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/configuration.dart';
import '../../../widgets/padding_widgets.dart';

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
                    InkWell(
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
                  title?.tr ?? "",
                  style: whiteTitleSmall,
                ),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ));
}
