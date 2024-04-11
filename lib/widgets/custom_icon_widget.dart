import 'package:flutter/material.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

Widget custoumIcon({String? iconName, Color? bgColor, String? imageUrl}) {
  return Column(
    children: [
      Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
            image: imageUrl != null
                ? DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))
                : null,
            color: bgColor ?? Colors.transparent,
            borderRadius: BorderRadius.circular(8.0)),
      ),
      paddingVertical8(),
      iconName != null
          ? Text(
              iconName,
              style: customIconText,
            )
          : const SizedBox()
    ],
  );
}
