import 'package:intl/intl.dart';

extension DateTimeHelper on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }

  bool isLess72Hours() {
    final dateTime2 = DateTime.now();
    final difference = parseLocal().difference(dateTime2);
    final hours = difference.inHours;
    return hours.abs() < 72;
  }

  bool isMorning() {
    DateTime start = DateTime(year, month, day, 7);
    DateTime end = DateTime(year, month, day, 13, 00);
    return isAfter(start) && isBefore(end);
  }

  DateTime parseUtc() {
    return toUtc();
  }

  DateTime parseLocal() {
    var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(toString(), true);
    return dateTime.toLocal();
  }
}
