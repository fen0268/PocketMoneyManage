import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  @Entity(realClass: Member)
  factory Member({
    @Id(assignable: true) required int id,
    @Default('') String name,
    @Default(0) int income,
    required DateTime createdAt,
  }) = _Member;
}
