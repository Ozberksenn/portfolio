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
                    "https://ucarecdn.com/04f495f0-fe3a-4332-992b-ff27e72e092d/68638iconscomputeriphoneemailgmailfreepnghq.png"),
            paddingHorizontal16(),
            custoumIcon(
                imageUrl:
                    "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png",
                bgColor: white),
            paddingHorizontal16(),
            custoumIcon(
                imageUrl:
                    "https://ucarecdn.com/185ae79e-c766-4990-9f4b-c661977c2f6f/spotii.png",
                bgColor: white),
            paddingHorizontal16(),
            custoumIcon(
              imageUrl:
                  "https://ucarecdn.com/4371b260-7181-4bdd-aa7e-5b450e64f95f/iPhoneKisilerdestekapplepng.webp",
            ),
          ],
        ),
      ),
    ],
  );
}
