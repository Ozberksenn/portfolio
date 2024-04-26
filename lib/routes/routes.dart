import 'package:get/get.dart';
import 'package:portfolio/pages/home/home_view.dart';
import 'package:portfolio/utils/app_routes.dart';

routes() => [GetPage(name: AppRoutes.home, page: () => HomeView())];
