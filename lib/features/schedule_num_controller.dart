import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/schedule_num/schedule_num.dart';

final scheduleNumNotifierProvider =
    StateNotifierProvider<ScheduleNumNotifier, ScheduleNum>(
  (ref) => ScheduleNumNotifier(),
);

class ScheduleNumNotifier extends StateNotifier<ScheduleNum> {
  ScheduleNumNotifier() : super(const ScheduleNum());

  void scheduleNumChange(int num) {
    state = state.copyWith(scheduleNum: num);
  }

  String getScheduleType(int num) {
    if (num == 0) {
      return '繰り返さない';
    } else if (num == 1) {
      return '毎日';
    } else if (num == 2) {
      return '毎週';
    } else if (num == 3) {
      return '毎月';
    } else if (num == 4) {
      return '毎年';
    } else if (num == 5) {
      return 'カスタム';
    } else {
      return '';
    }
  }
}
