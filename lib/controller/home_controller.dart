import 'dart:async';
import 'dart:convert' as convert;
import 'package:geolocator_web/geolocator_web.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/services/services.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../model/weather_model.dart';

class HomeController extends GetxController {
  RxBool isReady = false.obs;
  RxInt progress = 0.obs;
  final api = ApiServices();
  RxBool isWeather = false.obs;
  WeatherModel? weathers;
  Position? position;
  final GeolocatorPlatform geolocatorPlatform = GeolocatorPlatform.instance;
  GetStorage box = Get.put(GetStorage());
  @override
  void onInit() {
    super.onInit();
    init();
  }

  init() async {
    isReady.value = false;
    await fetchPosition();
  }

  Future<void> fetchProgress() async {
    getWeather();
    for (var j = 0; j <= 99; j++) {
      await Future.delayed(const Duration(milliseconds: 8), () {
        progress.value = progress.value + 1;
      });
    }
    if (progress.value >= 100) {
      isReady.value = true;
      showDialog('Did you know ?',
          'This portfolio will also look great on ${ResponsiveBreakpoints.of(Get.context!).equals(MOBILE) ? 'web' : 'mobile'}');
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
        showDialog('Location Permisson', 'You denied the permisson');
        fetchProgress();
      }
    }
    if (permission == LocationPermission.deniedForever) {
      showDialog('Location Permisson', 'You denied the permisson forever');
      fetchProgress();
    }
    await geolocatorPlatform
        .getCurrentPosition(
            locationSettings:
                const LocationSettings(accuracy: LocationAccuracy.high))
        .then((value) {
      position = value;
      fetchProgress();
    }).catchError((error) {
      showDialog('Error', error.toString());
    });
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
      }
    } catch (e) {
      showDialog('Error', e.toString());
    }
  }
}
