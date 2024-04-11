import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_icon_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';

import '../utils/configuration.dart';

Widget bottom() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: blackOpacity, borderRadius: BorderRadius.circular(18.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            custoumIcon(
                bgColor: white,
                imageUrl:
                    "https://ucarecdn.com/dd6ce37b-8a71-4a87-b39c-9808c04e475a/safari.png"),
            paddingHorizontal16(),
            custoumIcon(
                bgColor: white,
                imageUrl:
                    "https://cdn0.iconfinder.com/data/icons/apple-apps/100/Apple_Mail-512.png"),
            paddingHorizontal16(),
            custoumIcon(
                imageUrl:
                    "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png",
                bgColor: white),
            paddingHorizontal16(),
            custoumIcon(
                imageUrl:
                    "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png",
                bgColor: white),
            paddingHorizontal16(),
            custoumIcon(
                imageUrl:
                    "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png",
                bgColor: white),
          ],
        ),
      ),
    ],
  );
}
