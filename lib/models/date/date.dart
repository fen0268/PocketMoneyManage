import 'package:freezed_annotation/freezed_annotation.dart';

part 'date.freezed.dart';

@freezed
class Date with _$Date {
  const factory Date({
    DateTime? selectedDate,
  }) = _Date;
}
