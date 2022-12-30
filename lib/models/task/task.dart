import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  @Entity(realClass: Task)
  factory Task({
    @Id(assignable: true) required int id,
    @Default('') String title,
    @Default(0) int price,
    DateTime? doingAt,
    DateTime? createdAt,
    @Default(false) bool isDone,
    int? assigneeMemberId,
    @Default(0) int scheduleType,
    @Default(0) int taskNum,
  }) = _Task;
}
