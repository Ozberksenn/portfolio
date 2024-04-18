import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controller/app_controller.dart';
import 'package:portfolio/controller/home_controller.dart';
import '../../utils/configuration.dart';
import '../../widgets/bottom_widget.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/menu_widget.dart';
import 'widgets/weather_widgets.dart';

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
                fit: BoxFit.cover, image: NetworkImage(backgrounImage))),
        child: Column(
          children: [
            header(appController),
            Expanded(
              child: Row(
                children: [
                  Expanded(flex: 1, child: menu()),
                  Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            weather(controller),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            bottom()
          ],
        ),
      ),
    );
  }
}
