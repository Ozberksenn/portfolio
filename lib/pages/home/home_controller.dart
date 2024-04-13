import 'dart:convert' as convert;
import 'package:get/get.dart';
import 'package:portfolio/services/services.dart';

import '../../model/weather_model.dart';

class HomeController extends GetxController {
  final api = ApiServices();
  RxBool isWeather = false.obs;
  WeatherModel? weathers;

  @override
  void onInit() {
    super.onInit();
    getWeather();
  }

  getWeather() async {
    isWeather.value = false;
    var weatherUrl =
        "https://api.openweathermap.org/data/2.5/weather?lat=36.896893&lon=30.713324&appid=94d403b2fed1acff7073a1385dde3153&units=metric";
    try {
      final response = await api.fetchApi(weatherUrl);
      if (response != null) {
        var jsonResponse = convert.jsonDecode(response.toString());
        weathers = WeatherModel.fromJson(jsonResponse);
        isWeather.value = true;
      }
    } catch (e) {
      print(e);
    }
  }
}
