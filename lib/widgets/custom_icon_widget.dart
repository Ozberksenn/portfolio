import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget custoumIcon(
    {String? iconName,
    Color? bgColor,
    String? imageUrl,
    void Function()? onTap}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          width: ResponsiveBreakpoints.of(Get.context!).largerThan(MOBILE)
              ? 46
              : 60,
          height: ResponsiveBreakpoints.of(Get.context!).largerThan(MOBILE)
              ? 46
              : 60,
          decoration: BoxDecoration(
              image: imageUrl != null
                  ? DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageUrl))
                  : null,
              color: bgColor ?? Colors.transparent,
              borderRadius: BorderRadius.circular(12.0)),
        ),
      ),
      iconName != null ? paddingVertical8() : const SizedBox(),
      iconName != null
          ? Text(
              iconName.tr,
              style: customIconText,
            )
          : const SizedBox()
    ],
  );
}
