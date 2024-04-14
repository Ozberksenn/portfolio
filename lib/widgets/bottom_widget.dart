import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/dialogs/project_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/widgets/calendar_icon_widget.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_icon_widget.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import '../pages/home/dialogs/contact_bottom_sheet_widgets.dart';
import '../utils/configuration.dart';
import 'custom_bottom_sheet_widget.dart';

Widget bottom() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
            decoration: BoxDecoration(
                color: dark.withOpacity(0.1),
                border: Border.all(width: 0.3, color: Colors.grey),
                borderRadius: BorderRadius.circular(18.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                custoumIcon(
                    onTap: () => launchEmail(email),
                    bgColor: white,
                    imageUrl:
                        "https://ucarecdn.com/04f495f0-fe3a-4332-992b-ff27e72e092d/68638iconscomputeriphoneemailgmailfreepnghq.png"),
                paddingHorizontal16(),
                custoumIcon(
                    onTap: () =>
                        customBottomSheet(children: [projectBottomSheet()]),
                    imageUrl:
                        "https://static-00.iconduck.com/assets.00/flutter-icon-2048x2048-ufx4idi8.png",
                    bgColor: white),
                paddingHorizontal16(),
                calendarIcon(),
                paddingHorizontal16(),
                custoumIcon(
                    onTap: () => launchToUrl(
                        "https://open.spotify.com/user/212fqeawr4gidha5lelcaevnq?si=573e88c7fbff46d5"),
                    imageUrl:
                        "https://ucarecdn.com/64a8723e-dee7-46cf-a362-f8df8e43f6f4/sptti.png",
                    bgColor: white),
                paddingHorizontal16(),
                custoumIcon(
                  bgColor: grey,
                  onTap: () =>
                      customBottomSheet(children: [contactbottomSheet()]),
                  imageUrl:
                      "https://ucarecdn.com/4371b260-7181-4bdd-aa7e-5b450e64f95f/iPhoneKisilerdestekapplepng.webp",
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
