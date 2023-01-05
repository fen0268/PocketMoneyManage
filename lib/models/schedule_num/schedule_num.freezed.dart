// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_num.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleNum {
  int get scheduleNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleNumCopyWith<ScheduleNum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleNumCopyWith<$Res> {
  factory $ScheduleNumCopyWith(
          ScheduleNum value, $Res Function(ScheduleNum) then) =
      _$ScheduleNumCopyWithImpl<$Res, ScheduleNum>;
  @useResult
  $Res call({int scheduleNum});
}

/// @nodoc
class _$ScheduleNumCopyWithImpl<$Res, $Val extends ScheduleNum>
    implements $ScheduleNumCopyWith<$Res> {
  _$ScheduleNumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleNum = null,
  }) {
    return _then(_value.copyWith(
      scheduleNum: null == scheduleNum
          ? _value.scheduleNum
          : scheduleNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleNumCopyWith<$Res>
    implements $ScheduleNumCopyWith<$Res> {
  factory _$$_ScheduleNumCopyWith(
          _$_ScheduleNum value, $Res Function(_$_ScheduleNum) then) =
      __$$_ScheduleNumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int scheduleNum});
}

/// @nodoc
class __$$_ScheduleNumCopyWithImpl<$Res>
    extends _$ScheduleNumCopyWithImpl<$Res, _$_ScheduleNum>
    implements _$$_ScheduleNumCopyWith<$Res> {
  __$$_ScheduleNumCopyWithImpl(
      _$_ScheduleNum _value, $Res Function(_$_ScheduleNum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleNum = null,
  }) {
    return _then(_$_ScheduleNum(
      scheduleNum: null == scheduleNum
          ? _value.scheduleNum
          : scheduleNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScheduleNum implements _ScheduleNum {
  const _$_ScheduleNum({this.scheduleNum = 0});

  @override
  @JsonKey()
  final int scheduleNum;

  @override
  String toString() {
    return 'ScheduleNum(scheduleNum: $scheduleNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleNum &&
            (identical(other.scheduleNum, scheduleNum) ||
                other.scheduleNum == scheduleNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleNumCopyWith<_$_ScheduleNum> get copyWith =>
      __$$_ScheduleNumCopyWithImpl<_$_ScheduleNum>(this, _$identity);
}

abstract class _ScheduleNum implements ScheduleNum {
  const factory _ScheduleNum({final int scheduleNum}) = _$_ScheduleNum;

  @override
  int get scheduleNum;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleNumCopyWith<_$_ScheduleNum> get copyWith =>
      throw _privateConstructorUsedError;
}
