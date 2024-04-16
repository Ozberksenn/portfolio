import 'package:get/get.dart';

class Dictionary extends Translations {
  Map<String, Map<String, String>> map = {
    "en": {"Projects": "Projeler"}
  };

  @override
  Map<String, Map<String, String>> get keys => map;
}
