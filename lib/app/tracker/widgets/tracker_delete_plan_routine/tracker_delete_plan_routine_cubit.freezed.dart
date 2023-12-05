// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_delete_plan_routine_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDeletePlanRoutineState {
  ApiStateStatus get apiStatus => throw _privateConstructorUsedError;
  PlanRoutine? get planRoutine => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiStateStatus apiStatus, PlanRoutine? planRoutine)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine)?
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
  $TrackerDeletePlanRoutineStateCopyWith<TrackerDeletePlanRoutineState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDeletePlanRoutineStateCopyWith<$Res> {
  factory $TrackerDeletePlanRoutineStateCopyWith(
          TrackerDeletePlanRoutineState value,
          $Res Function(TrackerDeletePlanRoutineState) then) =
      _$TrackerDeletePlanRoutineStateCopyWithImpl<$Res,
          TrackerDeletePlanRoutineState>;
  @useResult
  $Res call({ApiStateStatus apiStatus, PlanRoutine? planRoutine});
}

/// @nodoc
class _$TrackerDeletePlanRoutineStateCopyWithImpl<$Res,
        $Val extends TrackerDeletePlanRoutineState>
    implements $TrackerDeletePlanRoutineStateCopyWith<$Res> {
  _$TrackerDeletePlanRoutineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? planRoutine = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDeletePlanRoutineStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStateStatus apiStatus, PlanRoutine? planRoutine});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDeletePlanRoutineStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? planRoutine = freezed,
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
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.apiStatus, this.planRoutine});

  @override
  final ApiStateStatus apiStatus;
  @override
  final PlanRoutine? planRoutine;

  @override
  String toString() {
    return 'TrackerDeletePlanRoutineState.initial(apiStatus: $apiStatus, planRoutine: $planRoutine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.planRoutine, planRoutine) ||
                other.planRoutine == planRoutine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, planRoutine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiStateStatus apiStatus, PlanRoutine? planRoutine)
        initial,
  }) {
    return initial(apiStatus, planRoutine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine)?
        initial,
  }) {
    return initial?.call(apiStatus, planRoutine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiStateStatus apiStatus, PlanRoutine? planRoutine)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(apiStatus, planRoutine);
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

abstract class _Initial implements TrackerDeletePlanRoutineState {
  const factory _Initial(
      {required final ApiStateStatus apiStatus,
      final PlanRoutine? planRoutine}) = _$_Initial;

  @override
  ApiStateStatus get apiStatus;
  @override
  PlanRoutine? get planRoutine;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
