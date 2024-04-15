import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/configuration.dart';

Widget projectCard(
    {String? title,
    String? description,
    String? imageUrl,
    String? icon,
    void Function()? onTap}) {
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
            color: dark,
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
        trailing: projectCardButton(onTap),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        height: Get.height / 4.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl.toString()))),
      )
    ],
  );
}

Widget projectCardButton(void Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: white, borderRadius: BorderRadius.circular(12.0)),
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
      child: Text(
        'See',
        style: Get.textTheme.bodyMedium!.copyWith(color: blue),
      ),
    ),
  );
}
