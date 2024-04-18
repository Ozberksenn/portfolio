import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/configuration.dart';

Widget customCircularIcon(
    {void Function()? onTap, required String title, required IconData? icon}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(6.0),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Icon(
              icon,
              size: 18,
              color: white,
            )),
        Text(
          title.tr,
          style: whiteBodySmall,
        )
      ],
    ),
  );
}
