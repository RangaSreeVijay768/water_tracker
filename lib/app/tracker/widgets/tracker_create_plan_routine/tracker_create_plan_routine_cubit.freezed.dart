// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_create_plan_routine_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerCreatePlanRoutineState {
  ApiStateStatus get apiStatus => throw _privateConstructorUsedError;
  PlanRoutine? get planRoutine => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStateStatus apiStatus,
            PlanRoutine? planRoutine, bool isButtonEnabled)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine,
            bool isButtonEnabled)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine,
            bool isButtonEnabled)?
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
  $TrackerCreatePlanRoutineStateCopyWith<TrackerCreatePlanRoutineState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerCreatePlanRoutineStateCopyWith<$Res> {
  factory $TrackerCreatePlanRoutineStateCopyWith(
          TrackerCreatePlanRoutineState value,
          $Res Function(TrackerCreatePlanRoutineState) then) =
      _$TrackerCreatePlanRoutineStateCopyWithImpl<$Res,
          TrackerCreatePlanRoutineState>;
  @useResult
  $Res call(
      {ApiStateStatus apiStatus,
      PlanRoutine? planRoutine,
      bool isButtonEnabled});
}

/// @nodoc
class _$TrackerCreatePlanRoutineStateCopyWithImpl<$Res,
        $Val extends TrackerCreatePlanRoutineState>
    implements $TrackerCreatePlanRoutineStateCopyWith<$Res> {
  _$TrackerCreatePlanRoutineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? planRoutine = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      planRoutine: freezed == planRoutine
          ? _value.planRoutine
          : planRoutine // ignore: cast_nullable_to_non_nullable
              as PlanRoutine?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerCreatePlanRoutineStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStateStatus apiStatus,
      PlanRoutine? planRoutine,
      bool isButtonEnabled});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerCreatePlanRoutineStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? planRoutine = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_$_Initial(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      planRoutine: freezed == planRoutine
          ? _value.planRoutine
          : planRoutine // ignore: cast_nullable_to_non_nullable
              as PlanRoutine?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.apiStatus, this.planRoutine, this.isButtonEnabled = true});

  @override
  final ApiStateStatus apiStatus;
  @override
  final PlanRoutine? planRoutine;
  @override
  @JsonKey()
  final bool isButtonEnabled;

  @override
  String toString() {
    return 'TrackerCreatePlanRoutineState.initial(apiStatus: $apiStatus, planRoutine: $planRoutine, isButtonEnabled: $isButtonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.planRoutine, planRoutine) ||
                other.planRoutine == planRoutine) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, apiStatus, planRoutine, isButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiStateStatus apiStatus,
            PlanRoutine? planRoutine, bool isButtonEnabled)
        initial,
  }) {
    return initial(apiStatus, planRoutine, isButtonEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine,
            bool isButtonEnabled)?
        initial,
  }) {
    return initial?.call(apiStatus, planRoutine, isButtonEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine,
            bool isButtonEnabled)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(apiStatus, planRoutine, isButtonEnabled);
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

abstract class _Initial implements TrackerCreatePlanRoutineState {
  const factory _Initial(
      {required final ApiStateStatus apiStatus,
      final PlanRoutine? planRoutine,
      final bool isButtonEnabled}) = _$_Initial;

  @override
  ApiStateStatus get apiStatus;
  @override
  PlanRoutine? get planRoutine;
  @override
  bool get isButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
