extension DateTimeEx on DateTime {
  /// 10年後の取得
  DateTime get tenYearLater {
    return DateTime(year + 10, month, day);
  }
}
