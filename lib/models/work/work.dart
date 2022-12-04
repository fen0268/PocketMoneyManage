import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'work.freezed.dart';

@freezed
class Work with _$Work {
  @Entity(realClass: Work)
  factory Work({
    @Id(assignable: true) required int id,
    @Default('') String title,
    @Default(0) int price,
    required DateTime doingAt,
    required DateTime createdAt,
    @Default(false) bool isDone,
    @Default('') String assigneeMemberId,
    @Default(0) int scheduleType,
  }) = _Work;
}
