import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget projectCard(
    {String? title, String? description, String? imageUrl, String? icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(
            appIcons[icon],
            size: 16,
          ),
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
