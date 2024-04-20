import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

Widget custoumIcon(
    {String? iconName,
    Color? bgColor,
    String? imageUrl,
    void Function()? onTap}) {
  return Column(
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          width: 46,
          height: 46,
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
