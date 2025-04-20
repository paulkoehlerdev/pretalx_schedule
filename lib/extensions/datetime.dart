extension DateTimeRounding on DateTime {
  DateTime floor() {
    return DateTime(year, month, day, hour);
  }
}
