import 'package:get/get.dart';

class Dictionary extends Translations {
  Map<String, Map<String, String>> map = {
    "en": {
      "Projects": "Projeler",
      'Resume': 'Öz Geçmiş',
      'About Me': 'Hakkımda',
      'Contact': 'İletişim',
      'share': 'paylaş',
      'mail': 'posta',
      'call': 'ara',
      'Mobile Developer': 'Mobil Geliştirici',
      '1+ years': '1+ deneyim',
      'Skill': 'Beceriler',
      'My Projects': 'Projelerim',
      'Experience': 'Deneyim',
      'Developer': 'Geliştirici',
      'Clouds': 'Soğuk',
      'Clear': 'Açık',
      'Rain': 'Yağmurlu',
      'Language': 'Dil'
    }
  };

  @override
  Map<String, Map<String, String>> get keys => map;
}
