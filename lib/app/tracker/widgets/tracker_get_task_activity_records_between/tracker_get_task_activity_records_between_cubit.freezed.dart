// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_get_task_activity_records_between_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerGetTaskActivityRecordsBetweenState {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  List<TaskActivityRecord> get taskActivityRecords =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackerGetTaskActivityRecordsBetweenStateCopyWith<
          TrackerGetTaskActivityRecordsBetweenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerGetTaskActivityRecordsBetweenStateCopyWith<$Res> {
  factory $TrackerGetTaskActivityRecordsBetweenStateCopyWith(
          TrackerGetTaskActivityRecordsBetweenState value,
          $Res Function(TrackerGetTaskActivityRecordsBetweenState) then) =
      _$TrackerGetTaskActivityRecordsBetweenStateCopyWithImpl<$Res,
          TrackerGetTaskActivityRecordsBetweenState>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      List<TaskActivityRecord> taskActivityRecords});
}

/// @nodoc
class _$TrackerGetTaskActivityRecordsBetweenStateCopyWithImpl<$Res,
        $Val extends TrackerGetTaskActivityRecordsBetweenState>
    implements $TrackerGetTaskActivityRecordsBetweenStateCopyWith<$Res> {
  _$TrackerGetTaskActivityRecordsBetweenStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? taskActivityRecords = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskActivityRecords: null == taskActivityRecords
          ? _value.taskActivityRecords
          : taskActivityRecords // ignore: cast_nullable_to_non_nullable
              as List<TaskActivityRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerGetTaskActivityRecordsBetweenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      List<TaskActivityRecord> taskActivityRecords});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerGetTaskActivityRecordsBetweenStateCopyWithImpl<$Res,
        _$_Initial> implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? taskActivityRecords = null,
  }) {
    return _then(_$_Initial(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      taskActivityRecords: null == taskActivityRecords
          ? _value._taskActivityRecords
          : taskActivityRecords // ignore: cast_nullable_to_non_nullable
              as List<TaskActivityRecord>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.startTime,
      required this.endTime,
      final List<TaskActivityRecord> taskActivityRecords = const []})
      : _taskActivityRecords = taskActivityRecords;

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  final List<TaskActivityRecord> _taskActivityRecords;
  @override
  @JsonKey()
  List<TaskActivityRecord> get taskActivityRecords {
    if (_taskActivityRecords is EqualUnmodifiableListView)
      return _taskActivityRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskActivityRecords);
  }

  @override
  String toString() {
    return 'TrackerGetTaskActivityRecordsBetweenState.initial(startTime: $startTime, endTime: $endTime, taskActivityRecords: $taskActivityRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._taskActivityRecords, _taskActivityRecords));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      const DeepCollectionEquality().hash(_taskActivityRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)
        initial,
  }) {
    return initial(startTime, endTime, taskActivityRecords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)?
        initial,
  }) {
    return initial?.call(startTime, endTime, taskActivityRecords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startTime, DateTime endTime,
            List<TaskActivityRecord> taskActivityRecords)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(startTime, endTime, taskActivityRecords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrackerGetTaskActivityRecordsBetweenState {
  const factory _Initial(
      {required final DateTime startTime,
      required final DateTime endTime,
      final List<TaskActivityRecord> taskActivityRecords}) = _$_Initial;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  List<TaskActivityRecord> get taskActivityRecords;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
