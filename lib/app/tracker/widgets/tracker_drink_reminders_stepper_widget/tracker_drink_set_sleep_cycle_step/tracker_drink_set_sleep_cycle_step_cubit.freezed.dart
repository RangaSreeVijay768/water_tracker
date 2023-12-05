// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_drink_set_sleep_cycle_step_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDrinkSetSleepCycleStepState {
  TimeOfDay get selectedSleepTime => throw _privateConstructorUsedError;
  TimeOfDay get selectedWakeUpTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)?
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
  $TrackerDrinkSetSleepCycleStepStateCopyWith<
          TrackerDrinkSetSleepCycleStepState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDrinkSetSleepCycleStepStateCopyWith<$Res> {
  factory $TrackerDrinkSetSleepCycleStepStateCopyWith(
          TrackerDrinkSetSleepCycleStepState value,
          $Res Function(TrackerDrinkSetSleepCycleStepState) then) =
      _$TrackerDrinkSetSleepCycleStepStateCopyWithImpl<$Res,
          TrackerDrinkSetSleepCycleStepState>;
  @useResult
  $Res call({TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime});
}

/// @nodoc
class _$TrackerDrinkSetSleepCycleStepStateCopyWithImpl<$Res,
        $Val extends TrackerDrinkSetSleepCycleStepState>
    implements $TrackerDrinkSetSleepCycleStepStateCopyWith<$Res> {
  _$TrackerDrinkSetSleepCycleStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSleepTime = null,
    Object? selectedWakeUpTime = null,
  }) {
    return _then(_value.copyWith(
      selectedSleepTime: null == selectedSleepTime
          ? _value.selectedSleepTime
          : selectedSleepTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedWakeUpTime: null == selectedWakeUpTime
          ? _value.selectedWakeUpTime
          : selectedWakeUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDrinkSetSleepCycleStepStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDrinkSetSleepCycleStepStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSleepTime = null,
    Object? selectedWakeUpTime = null,
  }) {
    return _then(_$_Initial(
      selectedSleepTime: null == selectedSleepTime
          ? _value.selectedSleepTime
          : selectedSleepTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedWakeUpTime: null == selectedWakeUpTime
          ? _value.selectedWakeUpTime
          : selectedWakeUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.selectedSleepTime, required this.selectedWakeUpTime});

  @override
  final TimeOfDay selectedSleepTime;
  @override
  final TimeOfDay selectedWakeUpTime;

  @override
  String toString() {
    return 'TrackerDrinkSetSleepCycleStepState.initial(selectedSleepTime: $selectedSleepTime, selectedWakeUpTime: $selectedWakeUpTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.selectedSleepTime, selectedSleepTime) ||
                other.selectedSleepTime == selectedSleepTime) &&
            (identical(other.selectedWakeUpTime, selectedWakeUpTime) ||
                other.selectedWakeUpTime == selectedWakeUpTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedSleepTime, selectedWakeUpTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)
        initial,
  }) {
    return initial(selectedSleepTime, selectedWakeUpTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)?
        initial,
  }) {
    return initial?.call(selectedSleepTime, selectedWakeUpTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeOfDay selectedSleepTime, TimeOfDay selectedWakeUpTime)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedSleepTime, selectedWakeUpTime);
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

abstract class _Initial implements TrackerDrinkSetSleepCycleStepState {
  const factory _Initial(
      {required final TimeOfDay selectedSleepTime,
      required final TimeOfDay selectedWakeUpTime}) = _$_Initial;

  @override
  TimeOfDay get selectedSleepTime;
  @override
  TimeOfDay get selectedWakeUpTime;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
