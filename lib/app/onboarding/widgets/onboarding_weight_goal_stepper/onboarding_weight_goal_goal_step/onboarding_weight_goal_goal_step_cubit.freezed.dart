// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_weight_goal_goal_step_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingWeightGoalGoalStepState {
  double get weight => throw _privateConstructorUsedError;
  double get recommendedGoal => throw _privateConstructorUsedError;
  double get currentGoal => throw _privateConstructorUsedError;
  ApiStateStatus get apiStateStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double weight, double recommendedGoal,
            double currentGoal, ApiStateStatus apiStateStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double weight, double recommendedGoal, double currentGoal,
            ApiStateStatus apiStateStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double weight, double recommendedGoal, double currentGoal,
            ApiStateStatus apiStateStatus)?
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
  $OnboardingWeightGoalGoalStepStateCopyWith<OnboardingWeightGoalGoalStepState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingWeightGoalGoalStepStateCopyWith<$Res> {
  factory $OnboardingWeightGoalGoalStepStateCopyWith(
          OnboardingWeightGoalGoalStepState value,
          $Res Function(OnboardingWeightGoalGoalStepState) then) =
      _$OnboardingWeightGoalGoalStepStateCopyWithImpl<$Res,
          OnboardingWeightGoalGoalStepState>;
  @useResult
  $Res call(
      {double weight,
      double recommendedGoal,
      double currentGoal,
      ApiStateStatus apiStateStatus});
}

/// @nodoc
class _$OnboardingWeightGoalGoalStepStateCopyWithImpl<$Res,
        $Val extends OnboardingWeightGoalGoalStepState>
    implements $OnboardingWeightGoalGoalStepStateCopyWith<$Res> {
  _$OnboardingWeightGoalGoalStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? recommendedGoal = null,
    Object? currentGoal = null,
    Object? apiStateStatus = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      recommendedGoal: null == recommendedGoal
          ? _value.recommendedGoal
          : recommendedGoal // ignore: cast_nullable_to_non_nullable
              as double,
      currentGoal: null == currentGoal
          ? _value.currentGoal
          : currentGoal // ignore: cast_nullable_to_non_nullable
              as double,
      apiStateStatus: null == apiStateStatus
          ? _value.apiStateStatus
          : apiStateStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OnboardingWeightGoalGoalStepStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double weight,
      double recommendedGoal,
      double currentGoal,
      ApiStateStatus apiStateStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OnboardingWeightGoalGoalStepStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? recommendedGoal = null,
    Object? currentGoal = null,
    Object? apiStateStatus = null,
  }) {
    return _then(_$_Initial(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      recommendedGoal: null == recommendedGoal
          ? _value.recommendedGoal
          : recommendedGoal // ignore: cast_nullable_to_non_nullable
              as double,
      currentGoal: null == currentGoal
          ? _value.currentGoal
          : currentGoal // ignore: cast_nullable_to_non_nullable
              as double,
      apiStateStatus: null == apiStateStatus
          ? _value.apiStateStatus
          : apiStateStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.weight,
      this.recommendedGoal = 3000,
      this.currentGoal = 2500,
      this.apiStateStatus = ApiStateStatus.initial});

  @override
  final double weight;
  @override
  @JsonKey()
  final double recommendedGoal;
  @override
  @JsonKey()
  final double currentGoal;
  @override
  @JsonKey()
  final ApiStateStatus apiStateStatus;

  @override
  String toString() {
    return 'OnboardingWeightGoalGoalStepState.initial(weight: $weight, recommendedGoal: $recommendedGoal, currentGoal: $currentGoal, apiStateStatus: $apiStateStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.recommendedGoal, recommendedGoal) ||
                other.recommendedGoal == recommendedGoal) &&
            (identical(other.currentGoal, currentGoal) ||
                other.currentGoal == currentGoal) &&
            (identical(other.apiStateStatus, apiStateStatus) ||
                other.apiStateStatus == apiStateStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, weight, recommendedGoal, currentGoal, apiStateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double weight, double recommendedGoal,
            double currentGoal, ApiStateStatus apiStateStatus)
        initial,
  }) {
    return initial(weight, recommendedGoal, currentGoal, apiStateStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double weight, double recommendedGoal, double currentGoal,
            ApiStateStatus apiStateStatus)?
        initial,
  }) {
    return initial?.call(weight, recommendedGoal, currentGoal, apiStateStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double weight, double recommendedGoal, double currentGoal,
            ApiStateStatus apiStateStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(weight, recommendedGoal, currentGoal, apiStateStatus);
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

abstract class _Initial implements OnboardingWeightGoalGoalStepState {
  const factory _Initial(
      {required final double weight,
      final double recommendedGoal,
      final double currentGoal,
      final ApiStateStatus apiStateStatus}) = _$_Initial;

  @override
  double get weight;
  @override
  double get recommendedGoal;
  @override
  double get currentGoal;
  @override
  ApiStateStatus get apiStateStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
