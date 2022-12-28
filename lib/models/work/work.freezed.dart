// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Work {
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  DateTime? get doingAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String get assigneeMemberId => throw _privateConstructorUsedError;
  int get scheduleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      int price,
      DateTime? doingAt,
      DateTime? createdAt,
      bool isDone,
      String assigneeMemberId,
      int scheduleType});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? doingAt = freezed,
    Object? createdAt = freezed,
    Object? isDone = null,
    Object? assigneeMemberId = null,
    Object? scheduleType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      doingAt: freezed == doingAt
          ? _value.doingAt
          : doingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      assigneeMemberId: null == assigneeMemberId
          ? _value.assigneeMemberId
          : assigneeMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$_WorkCopyWith(_$_Work value, $Res Function(_$_Work) then) =
      __$$_WorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      int price,
      DateTime? doingAt,
      DateTime? createdAt,
      bool isDone,
      String assigneeMemberId,
      int scheduleType});
}

/// @nodoc
class __$$_WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res, _$_Work>
    implements _$$_WorkCopyWith<$Res> {
  __$$_WorkCopyWithImpl(_$_Work _value, $Res Function(_$_Work) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? doingAt = freezed,
    Object? createdAt = freezed,
    Object? isDone = null,
    Object? assigneeMemberId = null,
    Object? scheduleType = null,
  }) {
    return _then(_$_Work(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      doingAt: freezed == doingAt
          ? _value.doingAt
          : doingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      assigneeMemberId: null == assigneeMemberId
          ? _value.assigneeMemberId
          : assigneeMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Entity(realClass: Work)
class _$_Work implements _Work {
  _$_Work(
      {@Id(assignable: true) required this.id,
      this.title = '',
      this.price = 0,
      this.doingAt,
      this.createdAt,
      this.isDone = false,
      this.assigneeMemberId = '',
      this.scheduleType = 0});

  @override
  @Id(assignable: true)
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int price;
  @override
  final DateTime? doingAt;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final bool isDone;
  @override
  @JsonKey()
  final String assigneeMemberId;
  @override
  @JsonKey()
  final int scheduleType;

  @override
  String toString() {
    return 'Work(id: $id, title: $title, price: $price, doingAt: $doingAt, createdAt: $createdAt, isDone: $isDone, assigneeMemberId: $assigneeMemberId, scheduleType: $scheduleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Work &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.doingAt, doingAt) || other.doingAt == doingAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.assigneeMemberId, assigneeMemberId) ||
                other.assigneeMemberId == assigneeMemberId) &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, doingAt,
      createdAt, isDone, assigneeMemberId, scheduleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkCopyWith<_$_Work> get copyWith =>
      __$$_WorkCopyWithImpl<_$_Work>(this, _$identity);
}

abstract class _Work implements Work {
  factory _Work(
      {@Id(assignable: true) required final int id,
      final String title,
      final int price,
      final DateTime? doingAt,
      final DateTime? createdAt,
      final bool isDone,
      final String assigneeMemberId,
      final int scheduleType}) = _$_Work;

  @override
  @Id(assignable: true)
  int get id;
  @override
  String get title;
  @override
  int get price;
  @override
  DateTime? get doingAt;
  @override
  DateTime? get createdAt;
  @override
  bool get isDone;
  @override
  String get assigneeMemberId;
  @override
  int get scheduleType;
  @override
  @JsonKey(ignore: true)
  _$$_WorkCopyWith<_$_Work> get copyWith => throw _privateConstructorUsedError;
}
