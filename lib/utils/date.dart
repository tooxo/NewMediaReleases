import 'package:intl/intl.dart';

bool isSameDay(DateTime date1, DateTime date2) {
  return date1.day == date2.day &&
      date1.month == date2.month &&
      date1.year == date2.year;
}

bool isTomorrow(DateTime current, DateTime comparable) {
  return current.day + 1 == comparable.day &&
      current.month == comparable.month &&
      current.year == comparable.year;
}

bool isYesterday(DateTime current, DateTime comparable) {
  return current.day - 1 == comparable.day &&
      current.month == comparable.month &&
      current.year == comparable.year;
}

bool isInFuture(DateTime date) {
  return date.toUtc().isAfter(DateTime.now().toUtc());
}

String formatDate({DateTime date}) {
  if (isSameDay(DateTime.now(), date)) {
    return "Today ${DateFormat("H:m").format(date)}";
  }
  if (isTomorrow(DateTime.now(), date)) {
    return "Tomorrow ${DateFormat("H:m").format(date)}";
  }
  if (isYesterday(DateTime.now(), date)) {
    return "Yesterday ${DateFormat("H:m").format(date)}";
  }
  return DateFormat("dd. MM. yyyy").format(date);
}

Duration differenceTimezone(DateTime time, int tz) {
  DateTime currentUtcTime = DateTime.now().toUtc();
  DateTime destinationTimeUtc = time;
  if (tz < 0) {
    destinationTimeUtc = destinationTimeUtc.add(Duration(hours: tz));
  }
  if (tz > 0) {
    destinationTimeUtc = destinationTimeUtc.subtract(Duration(hours: tz.abs()));
  }
  return Duration(
      seconds: destinationTimeUtc.difference(currentUtcTime).inSeconds);
}

bool inTheNext24Hours(DateTime time, int tz) {
  Duration d = differenceTimezone(time, tz);
  return !d.isNegative && d.inDays < 1;
}
