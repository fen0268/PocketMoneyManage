import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/date/date.dart';

final dateNotifierProvider =
    StateNotifierProvider.autoDispose<DateNotifier, Date>(
  (ref) => DateNotifier(),
);

class DateNotifier extends StateNotifier<Date> {
  DateNotifier() : super(const Date());

  /// 初期値に現在時刻をぶち込む
  void initDateTime() {
    state = state.copyWith(
      selectedDate: DateTime.now(),
    );
  }

  void selectDate(DateTime selectedDay) {
    state = state.copyWith(selectedDate: selectedDay);
  }
}
