import 'package:flutter/material.dart';

Widget custoumIcon({String? iconName, Color? bgColor, String? imageUrl}) {
  return Column(
    children: [
      Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            image: imageUrl != null
                ? DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))
                : null,
            color: bgColor ?? Colors.transparent,
            borderRadius: BorderRadius.circular(8.0)),
      ),
      iconName != null ? Text(iconName) : const SizedBox()
    ],
  );
}
