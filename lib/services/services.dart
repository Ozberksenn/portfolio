import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ApiServices extends GetxService {
  final dio = Dio();

  Future fetchApi(String url) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response;
    }
  }
}
