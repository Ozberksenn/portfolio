import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/controller/home_controller.dart';
import 'package:portfolio/widgets/padding_widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../utils/configuration.dart';
import '../../widgets/bottom_widget.dart';
import '../../widgets/header_widget.dart';
import 'widgets/content_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final AppController appController = Get.put(AppController());
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    ResponsiveBreakpoints.of(context).equals(MOBILE)
                        ? mobileBackgroundImage
                        : backgrounImage))),
        child: Column(
          children: [
            ResponsiveBreakpoints.of(context).equals(MOBILE)
                ? mobileHeader(controller)
                : header(appController),
            Expanded(
              child: ResponsiveBreakpoints.of(context).equals(MOBILE)
                  ? mobileContent(appController)
                  : content(controller),
            ),
            SizedBox(
                width: ResponsiveBreakpoints.of(context).equals(MOBILE)
                    ? Get.width / 1.1
                    : Get.width / 3.6,
                child: bottom()),
            paddingVertical16()
          ],
        ),
      ),
    );
  }
}
