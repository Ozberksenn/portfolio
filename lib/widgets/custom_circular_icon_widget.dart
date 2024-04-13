import 'package:flutter/material.dart';
import 'package:portfolio/Utils/configuration.dart';

Widget customCircularIcon({required String title, required IconData? icon}) {
  return Column(
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
        "Call",
        style: whiteBodySmall,
      )
    ],
  );
}
