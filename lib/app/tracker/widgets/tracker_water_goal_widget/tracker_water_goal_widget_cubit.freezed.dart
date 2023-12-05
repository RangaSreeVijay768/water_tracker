// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_water_goal_widget_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerWaterGoalWidgetState {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get currentQuantity => throw _privateConstructorUsedError;
  double get goalQuantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startTime, DateTime endTime,
            int currentQuantity, double goalQuantity)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startTime, DateTime endTime, int currentQuantity,
            double goalQuantity)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startTime, DateTime endTime, int currentQuantity,
            double goalQuantity)?
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
  $TrackerWaterGoalWidgetStateCopyWith<TrackerWaterGoalWidgetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerWaterGoalWidgetStateCopyWith<$Res> {
  factory $TrackerWaterGoalWidgetStateCopyWith(
          TrackerWaterGoalWidgetState value,
          $Res Function(TrackerWaterGoalWidgetState) then) =
      _$TrackerWaterGoalWidgetStateCopyWithImpl<$Res,
          TrackerWaterGoalWidgetState>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int currentQuantity,
      double goalQuantity});
}

/// @nodoc
class _$TrackerWaterGoalWidgetStateCopyWithImpl<$Res,
        $Val extends TrackerWaterGoalWidgetState>
    implements $TrackerWaterGoalWidgetStateCopyWith<$Res> {
  _$TrackerWaterGoalWidgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? currentQuantity = null,
    Object? goalQuantity = null,
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
      currentQuantity: null == currentQuantity
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      goalQuantity: null == goalQuantity
          ? _value.goalQuantity
          : goalQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerWaterGoalWidgetStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int currentQuantity,
      double goalQuantity});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerWaterGoalWidgetStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? currentQuantity = null,
    Object? goalQuantity = null,
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
      currentQuantity: null == currentQuantity
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      goalQuantity: null == goalQuantity
          ? _value.goalQuantity
          : goalQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.startTime,
      required this.endTime,
      this.currentQuantity = 0,
      this.goalQuantity = 0});

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final int currentQuantity;
  @override
  @JsonKey()
  final double goalQuantity;

  @override
  String toString() {
    return 'TrackerWaterGoalWidgetState.initial(startTime: $startTime, endTime: $endTime, currentQuantity: $currentQuantity, goalQuantity: $goalQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.currentQuantity, currentQuantity) ||
                other.currentQuantity == currentQuantity) &&
            (identical(other.goalQuantity, goalQuantity) ||
                other.goalQuantity == goalQuantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startTime, endTime, currentQuantity, goalQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startTime, DateTime endTime,
            int currentQuantity, double goalQuantity)
        initial,
  }) {
    return initial(startTime, endTime, currentQuantity, goalQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startTime, DateTime endTime, int currentQuantity,
            double goalQuantity)?
        initial,
  }) {
    return initial?.call(startTime, endTime, currentQuantity, goalQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startTime, DateTime endTime, int currentQuantity,
            double goalQuantity)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(startTime, endTime, currentQuantity, goalQuantity);
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

abstract class _Initial implements TrackerWaterGoalWidgetState {
  const factory _Initial(
      {required final DateTime startTime,
      required final DateTime endTime,
      final int currentQuantity,
      final double goalQuantity}) = _$_Initial;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get currentQuantity;
  @override
  double get goalQuantity;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
