import 'package:flutter/material.dart';

import '../utils/configuration.dart';

Widget button({String? title, void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      decoration:
          BoxDecoration(color: grey, borderRadius: BorderRadius.circular(6.0)),
      child: Text(
        title ?? "",
        style: whiteTitleSmall,
      ),
    ),
  );
}
