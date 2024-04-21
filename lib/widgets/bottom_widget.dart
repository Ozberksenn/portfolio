import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/pages/home/dialogs/project_bottom_sheet_widget.dart';
import 'package:portfolio/pages/home/widgets/calendar_icon_widget.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/custom_icon_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../pages/home/dialogs/contact_bottom_sheet_widgets.dart';
import 'custom_bottom_sheet_widget.dart';

Widget bottom() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(18.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
                  ? Get.width / 1.2
                  : Get.width / 4,
              height: ResponsiveBreakpoints.of(Get.context!).equals(MOBILE)
                  ? 80
                  : 75,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                  color: dark.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(18.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: applications.map((e) {
                  return e.bottom == 1 || e.bottom == 2
                      ? e.name == "Calendar"
                          ? ResponsiveBreakpoints.of(Get.context!)
                                  .equals(DESKTOP)
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: calendarIcon(),
                                )
                              : const SizedBox()
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: custoumIcon(
                                  imageUrl: e.image,
                                  onTap: () {
                                    if (e.name == "Email") {
                                      launchEmail(e.url.toString());
                                    } else if (e.name == "Projects") {
                                      customBottomSheet(
                                          children: [projectBottomSheet()]);
                                    } else if (e.name == "Contact") {
                                      customBottomSheet(
                                          children: [contactbottomSheet()]);
                                    } else {
                                      launchToUrl(e.url.toString());
                                    }
                                  }),
                            )
                      : const SizedBox();
                }).toList(),
              )

              //  ListView.builder(
              //     itemCount: applications.length,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              // return applications[index].bottom == 1 ||
              //         applications[index].bottom == 2
              //     ? applications[index].name == "Calendar"
              //         ? ResponsiveBreakpoints.of(context).equals(DESKTOP)
              //             ? Padding(
              //                 padding:
              //                     const EdgeInsets.symmetric(horizontal: 8.0),
              //                 child: calendarIcon(),
              //               )
              //             : const SizedBox()
              //         : Padding(
              //             padding:
              //                 const EdgeInsets.symmetric(horizontal: 8.0),
              //             child: custoumIcon(
              //                 imageUrl: applications[index].image,
              //                 onTap: () {
              //                   if (applications[index].name == "Email") {
              //                     launchEmail(
              //                         applications[index].url.toString());
              //                   } else if (applications[index].name ==
              //                       "Projects") {
              //                     customBottomSheet(
              //                         children: [projectBottomSheet()]);
              //                   } else if (applications[index].name ==
              //                       "Contact") {
              //                     customBottomSheet(
              //                         children: [contactbottomSheet()]);
              //                   } else {
              //                     launchToUrl(
              //                         applications[index].url.toString());
              //                   }
              //                 }),
              //           )
              //     : const SizedBox();
              //     })
              ),
        ],
      ),
    ),
  );
}
