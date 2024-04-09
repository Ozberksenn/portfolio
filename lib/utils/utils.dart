import 'package:intl/intl.dart';

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
