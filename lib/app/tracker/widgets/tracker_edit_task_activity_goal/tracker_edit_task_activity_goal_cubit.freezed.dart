// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_edit_task_activity_goal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerEditTaskActivityGoalState {
  ApiStateStatus get status => throw _privateConstructorUsedError;
  TaskActivityGoal? get taskActivityGoal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiStateStatus status, TaskActivityGoal? taskActivityGoal)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiStateStatus status, TaskActivityGoal? taskActivityGoal)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus status, TaskActivityGoal? taskActivityGoal)?
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
  $TrackerEditTaskActivityGoalStateCopyWith<TrackerEditTaskActivityGoalState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerEditTaskActivityGoalStateCopyWith<$Res> {
  factory $TrackerEditTaskActivityGoalStateCopyWith(
          TrackerEditTaskActivityGoalState value,
          $Res Function(TrackerEditTaskActivityGoalState) then) =
      _$TrackerEditTaskActivityGoalStateCopyWithImpl<$Res,
          TrackerEditTaskActivityGoalState>;
  @useResult
  $Res call({ApiStateStatus status, TaskActivityGoal? taskActivityGoal});
}

/// @nodoc
class _$TrackerEditTaskActivityGoalStateCopyWithImpl<$Res,
        $Val extends TrackerEditTaskActivityGoalState>
    implements $TrackerEditTaskActivityGoalStateCopyWith<$Res> {
  _$TrackerEditTaskActivityGoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? taskActivityGoal = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      taskActivityGoal: freezed == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerEditTaskActivityGoalStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStateStatus status, TaskActivityGoal? taskActivityGoal});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerEditTaskActivityGoalStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? taskActivityGoal = freezed,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      taskActivityGoal: freezed == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.status, this.taskActivityGoal});

  @override
  final ApiStateStatus status;
  @override
  final TaskActivityGoal? taskActivityGoal;

  @override
  String toString() {
    return 'TrackerEditTaskActivityGoalState.initial(status: $status, taskActivityGoal: $taskActivityGoal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.taskActivityGoal, taskActivityGoal) ||
                other.taskActivityGoal == taskActivityGoal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, taskActivityGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiStateStatus status, TaskActivityGoal? taskActivityGoal)
        initial,
  }) {
    return initial(status, taskActivityGoal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiStateStatus status, TaskActivityGoal? taskActivityGoal)?
        initial,
  }) {
    return initial?.call(status, taskActivityGoal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus status, TaskActivityGoal? taskActivityGoal)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, taskActivityGoal);
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

abstract class _Initial implements TrackerEditTaskActivityGoalState {
  const factory _Initial(
      {required final ApiStateStatus status,
      final TaskActivityGoal? taskActivityGoal}) = _$_Initial;

  @override
  ApiStateStatus get status;
  @override
  TaskActivityGoal? get taskActivityGoal;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
