import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget projectCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://ucarecdn.com/2afb6a87-55a6-4fff-b6e1-684c3e437baa/github6980894_1280.webp"))),
        ),
        title: Text(
          "project Name",
          style: whiteTitleSmall,
        ),
        subtitle: Text(
          "Project Desription",
          style: greyBodySmall,
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        width: Get.width / 3,
        height: Get.height / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://ucarecdn.com/9a68fd1e-dfd1-47a1-85ef-b9914f625c90/Image.png"))),
      )
    ],
  );
}
