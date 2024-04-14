import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

String formatDate(DateTime? value) {
  if (value == null) {
    return "";
  } else {
    return DateFormat.MMMMd().format(value);
  }
}

String formatDateTime(DateTime? value) {
  if (value == null) {
    return "";
  } else {
    return DateFormat.MMMMd().add_Hm().format(value);
  }
}

Future<void> launchToUrl(String? url) async {
  if (url == null) {
    showErrorDialog("Launch Url Error", "Url is empty");
    return;
  }

  if (!await launchUrl(Uri.parse(url))) {
    showErrorDialog("Launch Url Error", "Could not launch $url");
  }
}

showErrorDialog(String title, String message) {
  // todo buraya alert widgetı ekle.
  print(title);
  print(message);
}
