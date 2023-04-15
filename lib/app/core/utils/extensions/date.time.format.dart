import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  String get ddMMyy => DateFormat("dd-MM-yy").format(this);

  String custom(String formate) {
    return DateFormat(formate).format(this);
  }

  String get yyyyMMdd => DateFormat("yyyy-MM-dd").format(this);
  String get yyyyMMdd24 => DateFormat("yyyy-MM-dd HH:mm").format(this);
  String get mmYYYY => DateFormat("MM-yyyy").format(this);
  String get mmDDyyyyHHmmA => DateFormat('MM/dd/yyyy hh:mm a').format(this);
  String get yyyyMMddNumber => DateFormat("yyyyMMdd").format(this);
  String get hhMMa => DateFormat('hh:mm a').format(this);
  String get hhMM => DateFormat('HH:mm').format(this);
  String get hhMMss => DateFormat('HH:mm:ss').format(this);
  String get ddMMyyyy => DateFormat('dd/MM/yyyy').format(this);
  String get ddMMMMy => DateFormat("dd MMMM y").format(this);
}
