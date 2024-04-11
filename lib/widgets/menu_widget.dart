import 'package:flutter/material.dart';

import '../utils/configuration.dart';
import 'custom_icon_widget.dart';
import 'padding_widgets.dart';

Widget menu() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        custoumIcon(
            bgColor: white,
            iconName: "Linkedin",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
        paddingVertical16(),
        custoumIcon(
            bgColor: white,
            iconName: "Linkedin",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
        paddingVertical16(),
        custoumIcon(
            bgColor: white,
            iconName: "Linkedin",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
        paddingVertical16(),
        custoumIcon(
            bgColor: white,
            iconName: "Linkedin",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
        paddingVertical16(),
        custoumIcon(
            bgColor: white,
            iconName: "Linkedin",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
      ],
    ),
  );
}
