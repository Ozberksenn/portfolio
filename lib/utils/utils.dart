import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/utils/configuration.dart';
import 'package:url_launcher/url_launcher.dart';

String formatDate(DateTime? value) {
  if (value == null) {
    return "";
  } else {
    return DateFormat.MMMM().format(value);
  }
}

String formatDay(DateTime? value) {
  if (value == null) {
    return "";
  } else {
    return DateFormat.d().format(value);
  }
}

String formatDateTime(DateTime? value) {
  if (value == null) {
    return "";
  } else {
    return DateFormat.MMMMd().add_Hm().format(value);
  }
}

// Go to url
Future<void> launchToUrl(String? url) async {
  if (url == null) {
    showDialog("Launch Url Error", "Url is empty");
    return;
  }

  if (!await launchUrl(Uri.parse(url))) {}
}

// PHONE
Future<void> launchPhone(String url) async {
  String phoneSchema = url.replaceAll(' ', '');
  if (await canLaunchUrl(Uri(scheme: 'tel', path: phoneSchema))) {
    await launchUrl(Uri(scheme: 'tel', path: phoneSchema));
  } else {
    showDialog('Error', 'Error Launch Phone');
  }
}

//EMAIL
Future<void> launchEmail(String url) async {
  if (await canLaunchUrl(Uri(scheme: 'mailto', path: url))) {
    await launchUrl(Uri(scheme: 'mailto', path: url));
  } else {
    showDialog('Error', 'Error email!');
  }
}

// MAP
launchMap() async {
  String lat = "40.188526";
  String long = "29.060965";

  final String googleMapslocationUrl =
      "https://www.google.com/maps/search/?api=1&query=${lat},${long}";

  final String encodedURl = Uri.encodeFull(googleMapslocationUrl);

  if (await canLaunch(encodedURl)) {
    await launch(encodedURl);
  } else {
    print('Could not launch $encodedURl');
    throw 'Could not launch $encodedURl';
  }
}

showDialog(String? title, String? message) {
  Get.dialog(
      barrierColor: Colors.transparent,
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                width: Get.width / 1.2,
                padding: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                    color: dark.withOpacity(0.1),
                    border: Border.all(width: 0.2, color: grey),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.lightbulb,
                        color: white,
                      ),
                      Text(title ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: whiteTitleSmall)
                    ]),
                    Material(
                      color: Colors.transparent,
                      child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                          title: Text(
                            message ?? '',
                            style: whiteBodySmall,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          trailing: TextButton(
                              onPressed: () => Get.back(),
                              child: Text(
                                'OK',
                                style: whiteTitleSmall,
                              ))),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ));
}
