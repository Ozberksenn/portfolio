import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
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
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
              height: 75,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
              decoration: BoxDecoration(
                  color: dark.withOpacity(0.1),
                  border: Border.all(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.circular(18.0)),
              child: ListView.separated(
                  itemCount: applications.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return paddingHorizontal16();
                  },
                  itemBuilder: (context, index) {
                    return applications[index].name == "Calendar"
                        ? calendarIcon()
                        : custoumIcon(
                            imageUrl: applications[index].image,
                            onTap: () {
                              if (applications[index].name == "Email") {
                                launchEmail(applications[index].url.toString());
                              } else if (applications[index].name ==
                                  "Projects") {
                                customBottomSheet(
                                    children: [projectBottomSheet()]);
                              } else if (applications[index].name ==
                                  "Contact") {
                                customBottomSheet(
                                    children: [contactbottomSheet()]);
                              } else {
                                launchToUrl(applications[index].url.toString());
                              }
                            });
                  })),
        ),
      ),
    ],
  );
}
