import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_num.freezed.dart';

@freezed
class ScheduleNum with _$ScheduleNum {
  const factory ScheduleNum({
    @Default(0) int scheduleNum,
  }) = _ScheduleNum;
}
