import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:portfolio/utils/utils.dart';

Widget calendarIcon() {
  return Container(
    width: 48,
    height: 48,
    decoration:
        BoxDecoration(color: white, borderRadius: BorderRadius.circular(12.0)),
    child: Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              width: Get.width,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(12.0))),
              child: Text(
                formatDate(DateTime.now()),
                style: customIconText,
                textAlign: TextAlign.center,
              ),
            )),
        Expanded(
            flex: 2,
            child: SizedBox(
                child: Align(
              alignment: Alignment.center,
              child: Text(
                formatDay(DateTime.now()),
                style: Get.textTheme.titleSmall,
              ),
            ))),
      ],
    ),
  );
}
