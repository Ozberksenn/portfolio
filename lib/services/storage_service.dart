// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class StorageService extends GetxService {
//   static StorageService get() => Get.find();

//   late GetStorage box;

//   String get lang => box.read(StorageKeys.lang) ?? "";
//   set lang(String value) => writeStorage(StorageKeys.lang, value);

//   writeStorage(String key, dynamic value) {
//     if (value != null) box.write(key, value);
//   }

//   readStorage(String key) => box.read(key);

//   void deleteStorage(String key) => box.remove(key);

//   void clearStorage() => box.erase();
// }

// // storage keys.
// abstract class StorageKeys {
//   static const String lang = "lang";
// }
