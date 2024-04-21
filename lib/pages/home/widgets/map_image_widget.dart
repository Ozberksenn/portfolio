import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/utils.dart';

import '../../../utils/configuration.dart';

Widget mapImage() {
  return Column(
    children: [
      Expanded(
        child: InkWell(
          onTap: () => launchMap(),
          child: Container(
            decoration: BoxDecoration(
                color: white.withOpacity(0.2),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://ucarecdn.com/ecb04aed-0c4e-4b14-bf48-4b8505c2a90a/WhatsAppImage20240421at032259.jpeg")),
                borderRadius: BorderRadius.circular(12.0)),
          ),
        ),
      ),
      Text(
        'Map'.tr,
        style: whiteTitleSmall,
      )
    ],
  );
}
