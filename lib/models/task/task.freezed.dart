// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  DateTime? get doingAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  int? get assigneeMemberId => throw _privateConstructorUsedError;
  int get scheduleType => throw _privateConstructorUsedError;
  int get taskNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      int price,
      DateTime? doingAt,
      DateTime? createdAt,
      bool isDone,
      int? assigneeMemberId,
      int scheduleType,
      int taskNum});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

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
    Object? assigneeMemberId = freezed,
    Object? scheduleType = null,
    Object? taskNum = null,
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
      assigneeMemberId: freezed == assigneeMemberId
          ? _value.assigneeMemberId
          : assigneeMemberId // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as int,
      taskNum: null == taskNum
          ? _value.taskNum
          : taskNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      int price,
      DateTime? doingAt,
      DateTime? createdAt,
      bool isDone,
      int? assigneeMemberId,
      int scheduleType,
      int taskNum});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
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
    Object? assigneeMemberId = freezed,
    Object? scheduleType = null,
    Object? taskNum = null,
  }) {
    return _then(_$_Task(
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
      assigneeMemberId: freezed == assigneeMemberId
          ? _value.assigneeMemberId
          : assigneeMemberId // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduleType: null == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as int,
      taskNum: null == taskNum
          ? _value.taskNum
          : taskNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Entity(realClass: Task)
class _$_Task implements _Task {
  _$_Task(
      {@Id(assignable: true) required this.id,
      this.title = '',
      this.price = 0,
      this.doingAt,
      this.createdAt,
      this.isDone = false,
      this.assigneeMemberId,
      this.scheduleType = 0,
      this.taskNum = 0});

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
  final int? assigneeMemberId;
  @override
  @JsonKey()
  final int scheduleType;
  @override
  @JsonKey()
  final int taskNum;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, price: $price, doingAt: $doingAt, createdAt: $createdAt, isDone: $isDone, assigneeMemberId: $assigneeMemberId, scheduleType: $scheduleType, taskNum: $taskNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
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
                other.scheduleType == scheduleType) &&
            (identical(other.taskNum, taskNum) || other.taskNum == taskNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, doingAt,
      createdAt, isDone, assigneeMemberId, scheduleType, taskNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {@Id(assignable: true) required final int id,
      final String title,
      final int price,
      final DateTime? doingAt,
      final DateTime? createdAt,
      final bool isDone,
      final int? assigneeMemberId,
      final int scheduleType,
      final int taskNum}) = _$_Task;

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
  int? get assigneeMemberId;
  @override
  int get scheduleType;
  @override
  int get taskNum;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
