import 'dart:convert' as convert;
import 'package:geolocator_web/geolocator_web.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/services.dart';
import 'package:portfolio/utils/utils.dart';
import '../model/weather_model.dart';
import '../utils/app_routes.dart';

class HomeController extends GetxController {
  final api = ApiServices();
  RxBool isWeather = false.obs;
  WeatherModel? weathers;
  Position? position;
  final GeolocatorPlatform geolocatorPlatform = GeolocatorPlatform.instance;

  @override
  void onInit() async {
    super.onInit();
    init();
  }

  init() {
    fetchPosition();
  }

  getWeather() async {
    var parameters = {
      "lat": position != null ? position!.latitude : "36.896893",
      "long": position != null ? position!.longitude : "30.713324",
    };
    var weatherUrl =
        "https://api.openweathermap.org/data/2.5/weather?lat=${parameters["lat"]}&lon=${parameters["long"]}&appid=94d403b2fed1acff7073a1385dde3153&units=metric";
    try {
      final response = await api.fetchApi(weatherUrl);
      if (response != null) {
        var jsonResponse = convert.jsonDecode(response.toString());
        weathers = WeatherModel.fromJson(jsonResponse);
        isWeather.value = true;
        Get.toNamed(AppRoutes.home);
      }
    } catch (e) {
      showErrorDialog('Error', e.toString());
    }
  }

  fetchPosition() async {
    isWeather.value = false;
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }
    permission = await geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        showDialog('Permisson', 'You denied the permisson');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      showDialog('Permisson', 'You denied the permisson forever');
    }
    await geolocatorPlatform
        .getCurrentPosition(
            locationSettings:
                const LocationSettings(accuracy: LocationAccuracy.high))
        .then((value) {
      position = value;
      getWeather();
    }).catchError((error) {
      showErrorDialog('Error', error.toString());
    });
  }
}