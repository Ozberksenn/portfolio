import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/utils.dart';
import 'custom_icon_widget.dart';

Widget menu() {
  return Container(
      width: 100,
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: applications.length,
          itemBuilder: (context, index) {
            return applications[index].bottom != 1
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: custoumIcon(
                        iconName: applications[index].name,
                        imageUrl: applications[index].image,
                        onTap: () {
                          if (applications[index].name == 'Language') {
                            print('change language');
                          } else {
                            launchToUrl(applications[index].url);
                          }
                        }),
                  )
                : const SizedBox();
          }));
}
