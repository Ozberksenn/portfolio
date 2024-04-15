import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget projectCard(
    {String? title, String? description, String? imageUrl, String? profilUrl}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: NetworkImage(profilUrl.toString()))),
        ),
        title: Text(
          title ?? "",
          style: whiteTitleSmall,
        ),
        subtitle: Text(
          description ?? "",
          style: greyBodySmall,
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        width: Get.width / 3,
        height: Get.height / 4.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl.toString()))),
      )
    ],
  );
}
