// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_edit_goal_modal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerEditGoalModalState {
  BooleanStatus get modalStatus => throw _privateConstructorUsedError;
  TaskActivityGoal? get taskActivityGoal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)?
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
  $TrackerEditGoalModalStateCopyWith<TrackerEditGoalModalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerEditGoalModalStateCopyWith<$Res> {
  factory $TrackerEditGoalModalStateCopyWith(TrackerEditGoalModalState value,
          $Res Function(TrackerEditGoalModalState) then) =
      _$TrackerEditGoalModalStateCopyWithImpl<$Res, TrackerEditGoalModalState>;
  @useResult
  $Res call({BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal});
}

/// @nodoc
class _$TrackerEditGoalModalStateCopyWithImpl<$Res,
        $Val extends TrackerEditGoalModalState>
    implements $TrackerEditGoalModalStateCopyWith<$Res> {
  _$TrackerEditGoalModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modalStatus = null,
    Object? taskActivityGoal = freezed,
  }) {
    return _then(_value.copyWith(
      modalStatus: null == modalStatus
          ? _value.modalStatus
          : modalStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      taskActivityGoal: freezed == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerEditGoalModalStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerEditGoalModalStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modalStatus = null,
    Object? taskActivityGoal = freezed,
  }) {
    return _then(_$_Initial(
      modalStatus: null == modalStatus
          ? _value.modalStatus
          : modalStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      taskActivityGoal: freezed == taskActivityGoal
          ? _value.taskActivityGoal
          : taskActivityGoal // ignore: cast_nullable_to_non_nullable
              as TaskActivityGoal?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.modalStatus = BooleanStatus.closed, this.taskActivityGoal});

  @override
  @JsonKey()
  final BooleanStatus modalStatus;
  @override
  final TaskActivityGoal? taskActivityGoal;

  @override
  String toString() {
    return 'TrackerEditGoalModalState.initial(modalStatus: $modalStatus, taskActivityGoal: $taskActivityGoal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.modalStatus, modalStatus) ||
                other.modalStatus == modalStatus) &&
            (identical(other.taskActivityGoal, taskActivityGoal) ||
                other.taskActivityGoal == taskActivityGoal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modalStatus, taskActivityGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)
        initial,
  }) {
    return initial(modalStatus, taskActivityGoal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)?
        initial,
  }) {
    return initial?.call(modalStatus, taskActivityGoal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BooleanStatus modalStatus, TaskActivityGoal? taskActivityGoal)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(modalStatus, taskActivityGoal);
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

abstract class _Initial implements TrackerEditGoalModalState {
  const factory _Initial(
      {final BooleanStatus modalStatus,
      final TaskActivityGoal? taskActivityGoal}) = _$_Initial;

  @override
  BooleanStatus get modalStatus;
  @override
  TaskActivityGoal? get taskActivityGoal;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
