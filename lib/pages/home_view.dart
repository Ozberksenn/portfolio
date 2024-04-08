import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://ucarecdn.com/4556dc02-e7dd-4616-a725-2eb65bc9c4f2/background.png'))),
        child: Column(
          children: [header()],
        ),
      ),
    );
  }
}
