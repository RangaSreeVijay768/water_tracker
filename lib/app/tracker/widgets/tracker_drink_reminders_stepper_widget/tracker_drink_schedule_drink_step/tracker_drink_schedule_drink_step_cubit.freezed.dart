// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_drink_schedule_drink_step_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDrinkScheduleDrinkStepState {
  Map<DrinkType, int> get drinkTypeCountMap =>
      throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  Map<DrinkType, List<TimeOfDay>> get drinkSchedulesMap =>
      throw _privateConstructorUsedError;
  List<DrinkTypeAndPlanRoutines>? get drinkTypeAndPlanRoutines =>
      throw _privateConstructorUsedError;
  List<GetDrinkWaterPlanExecutionTimesResponse>?
      get drinkWaterPlanExecutionTimes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)?
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
  $TrackerDrinkScheduleDrinkStepStateCopyWith<
          TrackerDrinkScheduleDrinkStepState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDrinkScheduleDrinkStepStateCopyWith<$Res> {
  factory $TrackerDrinkScheduleDrinkStepStateCopyWith(
          TrackerDrinkScheduleDrinkStepState value,
          $Res Function(TrackerDrinkScheduleDrinkStepState) then) =
      _$TrackerDrinkScheduleDrinkStepStateCopyWithImpl<$Res,
          TrackerDrinkScheduleDrinkStepState>;
  @useResult
  $Res call(
      {Map<DrinkType, int> drinkTypeCountMap,
      DateTime startTime,
      DateTime endTime,
      Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
      List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
      List<GetDrinkWaterPlanExecutionTimesResponse>?
          drinkWaterPlanExecutionTimes});
}

/// @nodoc
class _$TrackerDrinkScheduleDrinkStepStateCopyWithImpl<$Res,
        $Val extends TrackerDrinkScheduleDrinkStepState>
    implements $TrackerDrinkScheduleDrinkStepStateCopyWith<$Res> {
  _$TrackerDrinkScheduleDrinkStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypeCountMap = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? drinkSchedulesMap = null,
    Object? drinkTypeAndPlanRoutines = freezed,
    Object? drinkWaterPlanExecutionTimes = freezed,
  }) {
    return _then(_value.copyWith(
      drinkTypeCountMap: null == drinkTypeCountMap
          ? _value.drinkTypeCountMap
          : drinkTypeCountMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, int>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      drinkSchedulesMap: null == drinkSchedulesMap
          ? _value.drinkSchedulesMap
          : drinkSchedulesMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, List<TimeOfDay>>,
      drinkTypeAndPlanRoutines: freezed == drinkTypeAndPlanRoutines
          ? _value.drinkTypeAndPlanRoutines
          : drinkTypeAndPlanRoutines // ignore: cast_nullable_to_non_nullable
              as List<DrinkTypeAndPlanRoutines>?,
      drinkWaterPlanExecutionTimes: freezed == drinkWaterPlanExecutionTimes
          ? _value.drinkWaterPlanExecutionTimes
          : drinkWaterPlanExecutionTimes // ignore: cast_nullable_to_non_nullable
              as List<GetDrinkWaterPlanExecutionTimesResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDrinkScheduleDrinkStepStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<DrinkType, int> drinkTypeCountMap,
      DateTime startTime,
      DateTime endTime,
      Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
      List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
      List<GetDrinkWaterPlanExecutionTimesResponse>?
          drinkWaterPlanExecutionTimes});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDrinkScheduleDrinkStepStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypeCountMap = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? drinkSchedulesMap = null,
    Object? drinkTypeAndPlanRoutines = freezed,
    Object? drinkWaterPlanExecutionTimes = freezed,
  }) {
    return _then(_$_Initial(
      drinkTypeCountMap: null == drinkTypeCountMap
          ? _value._drinkTypeCountMap
          : drinkTypeCountMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, int>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      drinkSchedulesMap: null == drinkSchedulesMap
          ? _value._drinkSchedulesMap
          : drinkSchedulesMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, List<TimeOfDay>>,
      drinkTypeAndPlanRoutines: freezed == drinkTypeAndPlanRoutines
          ? _value._drinkTypeAndPlanRoutines
          : drinkTypeAndPlanRoutines // ignore: cast_nullable_to_non_nullable
              as List<DrinkTypeAndPlanRoutines>?,
      drinkWaterPlanExecutionTimes: freezed == drinkWaterPlanExecutionTimes
          ? _value._drinkWaterPlanExecutionTimes
          : drinkWaterPlanExecutionTimes // ignore: cast_nullable_to_non_nullable
              as List<GetDrinkWaterPlanExecutionTimesResponse>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final Map<DrinkType, int> drinkTypeCountMap,
      required this.startTime,
      required this.endTime,
      required final Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
      final List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
      final List<GetDrinkWaterPlanExecutionTimesResponse>?
          drinkWaterPlanExecutionTimes})
      : _drinkTypeCountMap = drinkTypeCountMap,
        _drinkSchedulesMap = drinkSchedulesMap,
        _drinkTypeAndPlanRoutines = drinkTypeAndPlanRoutines,
        _drinkWaterPlanExecutionTimes = drinkWaterPlanExecutionTimes;

  final Map<DrinkType, int> _drinkTypeCountMap;
  @override
  Map<DrinkType, int> get drinkTypeCountMap {
    if (_drinkTypeCountMap is EqualUnmodifiableMapView)
      return _drinkTypeCountMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_drinkTypeCountMap);
  }

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  final Map<DrinkType, List<TimeOfDay>> _drinkSchedulesMap;
  @override
  Map<DrinkType, List<TimeOfDay>> get drinkSchedulesMap {
    if (_drinkSchedulesMap is EqualUnmodifiableMapView)
      return _drinkSchedulesMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_drinkSchedulesMap);
  }

  final List<DrinkTypeAndPlanRoutines>? _drinkTypeAndPlanRoutines;
  @override
  List<DrinkTypeAndPlanRoutines>? get drinkTypeAndPlanRoutines {
    final value = _drinkTypeAndPlanRoutines;
    if (value == null) return null;
    if (_drinkTypeAndPlanRoutines is EqualUnmodifiableListView)
      return _drinkTypeAndPlanRoutines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDrinkWaterPlanExecutionTimesResponse>?
      _drinkWaterPlanExecutionTimes;
  @override
  List<GetDrinkWaterPlanExecutionTimesResponse>?
      get drinkWaterPlanExecutionTimes {
    final value = _drinkWaterPlanExecutionTimes;
    if (value == null) return null;
    if (_drinkWaterPlanExecutionTimes is EqualUnmodifiableListView)
      return _drinkWaterPlanExecutionTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackerDrinkScheduleDrinkStepState.initial(drinkTypeCountMap: $drinkTypeCountMap, startTime: $startTime, endTime: $endTime, drinkSchedulesMap: $drinkSchedulesMap, drinkTypeAndPlanRoutines: $drinkTypeAndPlanRoutines, drinkWaterPlanExecutionTimes: $drinkWaterPlanExecutionTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._drinkTypeCountMap, _drinkTypeCountMap) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._drinkSchedulesMap, _drinkSchedulesMap) &&
            const DeepCollectionEquality().equals(
                other._drinkTypeAndPlanRoutines, _drinkTypeAndPlanRoutines) &&
            const DeepCollectionEquality().equals(
                other._drinkWaterPlanExecutionTimes,
                _drinkWaterPlanExecutionTimes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drinkTypeCountMap),
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_drinkSchedulesMap),
      const DeepCollectionEquality().hash(_drinkTypeAndPlanRoutines),
      const DeepCollectionEquality().hash(_drinkWaterPlanExecutionTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)
        initial,
  }) {
    return initial(drinkTypeCountMap, startTime, endTime, drinkSchedulesMap,
        drinkTypeAndPlanRoutines, drinkWaterPlanExecutionTimes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)?
        initial,
  }) {
    return initial?.call(
        drinkTypeCountMap,
        startTime,
        endTime,
        drinkSchedulesMap,
        drinkTypeAndPlanRoutines,
        drinkWaterPlanExecutionTimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<DrinkType, int> drinkTypeCountMap,
            DateTime startTime,
            DateTime endTime,
            Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
            List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
            List<GetDrinkWaterPlanExecutionTimesResponse>?
                drinkWaterPlanExecutionTimes)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(drinkTypeCountMap, startTime, endTime, drinkSchedulesMap,
          drinkTypeAndPlanRoutines, drinkWaterPlanExecutionTimes);
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

abstract class _Initial implements TrackerDrinkScheduleDrinkStepState {
  const factory _Initial(
      {required final Map<DrinkType, int> drinkTypeCountMap,
      required final DateTime startTime,
      required final DateTime endTime,
      required final Map<DrinkType, List<TimeOfDay>> drinkSchedulesMap,
      final List<DrinkTypeAndPlanRoutines>? drinkTypeAndPlanRoutines,
      final List<GetDrinkWaterPlanExecutionTimesResponse>?
          drinkWaterPlanExecutionTimes}) = _$_Initial;

  @override
  Map<DrinkType, int> get drinkTypeCountMap;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  Map<DrinkType, List<TimeOfDay>> get drinkSchedulesMap;
  @override
  List<DrinkTypeAndPlanRoutines>? get drinkTypeAndPlanRoutines;
  @override
  List<GetDrinkWaterPlanExecutionTimesResponse>?
      get drinkWaterPlanExecutionTimes;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
