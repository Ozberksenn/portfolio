import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Utils/configuration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

Widget header() {
  return Container(
    width: Get.width,
    height: 26,
    color: blackOpacity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            paddingHorizontal16(),
            Icon(
              FontAwesomeIcons.apple,
              size: 18,
              color: white,
            ),
            paddingHorizontal16(),
            Text(
              'Finder',
              style: whiteTitleSmall,
            ),
            paddingHorizontal16(),
            Text(
              'About Me',
              style: whiteBodySmall,
            ),
            paddingHorizontal16(),
            Text(
              'Contact',
              style: whiteBodySmall,
            ),
            paddingHorizontal16(),
            Text(
              'Projects',
              style: whiteBodySmall,
            )
          ],
        ),
        Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "EN",
                  style: whiteTitleSmall,
                )),
            paddingHorizontal8(),
            Text(
              formatDateTime(DateTime.now()),
              style: whiteBodySmall,
            ),
            paddingHorizontal8()
          ],
        )
      ],
    ),
  );
}
