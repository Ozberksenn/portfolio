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
            iconName: "Projects",
            imageUrl:
                "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png"),
        paddingVertical16(),
        custoumIcon(
            iconName: "Resume",
            imageUrl:
                "https://ucarecdn.com/6f05fac5-7642-4b82-a4e6-eeddf0ed25aa/Adobe_Acrobat_Reader.webp"),
        paddingVertical16(),
        custoumIcon(
            bgColor: white,
            iconName: "Github",
            imageUrl:
                "https://ucarecdn.com/2afb6a87-55a6-4fff-b6e1-684c3e437baa/github6980894_1280.webp"),
        paddingVertical16(),
        custoumIcon(
            bgColor: Colors.transparent,
            iconName: "Linkedin",
            imageUrl:
                "https://ucarecdn.com/eb590850-8828-48e2-b4f6-1a20c8605195/linkedin.png"),
      ],
    ),
  );
}
