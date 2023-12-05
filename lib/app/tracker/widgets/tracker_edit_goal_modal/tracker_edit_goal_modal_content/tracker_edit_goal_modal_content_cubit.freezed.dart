// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_edit_goal_modal_content_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerEditGoalModalContentState {
  TaskActivityGoal get taskActivityGoal => throw _privateConstructorUsedError;
  double get recommendedGoal => throw _privateConstructorUsedError;
  double? get goal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskActivityGoal taskActivityGoal,
            double recommendedGoal, double? goal)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskActivityGoal taskActivityGoal, double recommendedGoal,
            double? goal)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskActivityGoal taskActivityGoal, double recommendedGoal,
            double? goal)?
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
  $TrackerEditGoalModalContentStateCopyWith<TrackerEditGoalModalContentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerEditGoalModalContentStateCopyWith<$Res> {
  factory $TrackerEditGoalModalContentStateCopyWith(
          TrackerEditGoalModalContentState value,
          $Res Function(TrackerEditGoalModalContentState) then) =
      _$TrackerEditGoalModalContentStateCopyWithImpl<$Res,
          TrackerEditGoalModalContentState>;
  @useResult
  $Res call(
      {TaskActivityGoal taskActivityGoal,
      double recommendedGoal,
      double? goal});
}

/// @nodoc
class _$TrackerEditGoalModalContentStateCopyWithImpl<$Res,
        $Val extends TrackerEditGoalModalContentState>
    implements $TrackerEditGoalModalContentStateCopyWith<$Res> {
  _$TrackerEditGoalModalContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskActivityGoal = null,
    Object? recommendedGoal = null,
    Object? goal = freezed,
  }) {
    return _then(_value.copyWith(
      taskActivityGoal: null == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal,
      recommendedGoal: null == recommendedGoal
          ? _value.recommendedGoal
          : recommendedGoal // ignore: cast_nullable_to_non_nullable
              as double,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerEditGoalModalContentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskActivityGoal taskActivityGoal,
      double recommendedGoal,
      double? goal});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerEditGoalModalContentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskActivityGoal = null,
    Object? recommendedGoal = null,
    Object? goal = freezed,
  }) {
    return _then(_$_Initial(
      taskActivityGoal: null == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal,
      recommendedGoal: null == recommendedGoal
          ? _value.recommendedGoal
          : recommendedGoal // ignore: cast_nullable_to_non_nullable
              as double,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.taskActivityGoal, this.recommendedGoal = 2500, this.goal});

  @override
  final TaskActivityGoal taskActivityGoal;
  @override
  @JsonKey()
  final double recommendedGoal;
  @override
  final double? goal;

  @override
  String toString() {
    return 'TrackerEditGoalModalContentState.initial(taskActivityGoal: $taskActivityGoal, recommendedGoal: $recommendedGoal, goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.taskActivityGoal, taskActivityGoal) ||
                other.taskActivityGoal == taskActivityGoal) &&
            (identical(other.recommendedGoal, recommendedGoal) ||
                other.recommendedGoal == recommendedGoal) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, taskActivityGoal, recommendedGoal, goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskActivityGoal taskActivityGoal,
            double recommendedGoal, double? goal)
        initial,
  }) {
    return initial(taskActivityGoal, recommendedGoal, goal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskActivityGoal taskActivityGoal, double recommendedGoal,
            double? goal)?
        initial,
  }) {
    return initial?.call(taskActivityGoal, recommendedGoal, goal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskActivityGoal taskActivityGoal, double recommendedGoal,
            double? goal)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(taskActivityGoal, recommendedGoal, goal);
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

abstract class _Initial implements TrackerEditGoalModalContentState {
  const factory _Initial(
      {required final TaskActivityGoal taskActivityGoal,
      final double recommendedGoal,
      final double? goal}) = _$_Initial;

  @override
  TaskActivityGoal get taskActivityGoal;
  @override
  double get recommendedGoal;
  @override
  double? get goal;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
