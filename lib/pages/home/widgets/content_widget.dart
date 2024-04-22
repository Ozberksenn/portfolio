import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/controller/home_controller.dart';
import 'package:portfolio/model/app_icons_model.dart';
import '../../../data/data.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_bottom_sheet_widget.dart';
import '../../../widgets/custom_icon_widget.dart';
import '../../../widgets/menu_widget.dart';
import '../dialogs/project_bottom_sheet_widget.dart';
import 'weather_widgets.dart';

Widget content(HomeController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      menu(),
      Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            weather(controller),
          ],
        ),
      ),
    ],
  );
}

Widget mobileContent(AppController appController, lang) {
  List<AppIconsModel> mobileContentMenu = [];
  for (var i in applications) {
    if (i.bottom != 1) {
      mobileContentMenu.add(i);
    }
  }
  return SizedBox(
      width: Get.width / 1.1,
      child: GridView.builder(
          itemCount: mobileContentMenu.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return mobileContentMenu[index].bottom != 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: custoumIcon(
                        iconName: mobileContentMenu[index].name,
                        imageUrl: mobileContentMenu[index].image,
                        onTap: () {
                          if (mobileContentMenu[index].name == 'Projects') {
                            customBottomSheet(children: [projectBottomSheet()]);
                          } else if (mobileContentMenu[index].name ==
                              'Language') {
                            appController.changeLanguage(lang);
                          } else {
                            launchToUrl(mobileContentMenu[index].url);
                          }
                        }),
                  )
                : const SizedBox();
          }));
}
