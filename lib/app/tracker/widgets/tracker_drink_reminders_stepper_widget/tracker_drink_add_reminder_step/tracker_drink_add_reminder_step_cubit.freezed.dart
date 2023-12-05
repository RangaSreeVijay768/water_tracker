// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_drink_add_reminder_step_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDrinkAddReminderStepState {
  List<DrinkType> get drinkTypes => throw _privateConstructorUsedError;
  Map<DrinkType, int> get drinkTypeCountMap =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)?
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
  $TrackerDrinkAddReminderStepStateCopyWith<TrackerDrinkAddReminderStepState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDrinkAddReminderStepStateCopyWith<$Res> {
  factory $TrackerDrinkAddReminderStepStateCopyWith(
          TrackerDrinkAddReminderStepState value,
          $Res Function(TrackerDrinkAddReminderStepState) then) =
      _$TrackerDrinkAddReminderStepStateCopyWithImpl<$Res,
          TrackerDrinkAddReminderStepState>;
  @useResult
  $Res call(
      {List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap});
}

/// @nodoc
class _$TrackerDrinkAddReminderStepStateCopyWithImpl<$Res,
        $Val extends TrackerDrinkAddReminderStepState>
    implements $TrackerDrinkAddReminderStepStateCopyWith<$Res> {
  _$TrackerDrinkAddReminderStepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? drinkTypeCountMap = null,
  }) {
    return _then(_value.copyWith(
      drinkTypes: null == drinkTypes
          ? _value.drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      drinkTypeCountMap: null == drinkTypeCountMap
          ? _value.drinkTypeCountMap
          : drinkTypeCountMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDrinkAddReminderStepStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDrinkAddReminderStepStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? drinkTypeCountMap = null,
  }) {
    return _then(_$_Initial(
      drinkTypes: null == drinkTypes
          ? _value._drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      drinkTypeCountMap: null == drinkTypeCountMap
          ? _value._drinkTypeCountMap
          : drinkTypeCountMap // ignore: cast_nullable_to_non_nullable
              as Map<DrinkType, int>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DrinkType> drinkTypes,
      required final Map<DrinkType, int> drinkTypeCountMap})
      : _drinkTypes = drinkTypes,
        _drinkTypeCountMap = drinkTypeCountMap;

  final List<DrinkType> _drinkTypes;
  @override
  List<DrinkType> get drinkTypes {
    if (_drinkTypes is EqualUnmodifiableListView) return _drinkTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinkTypes);
  }

  final Map<DrinkType, int> _drinkTypeCountMap;
  @override
  Map<DrinkType, int> get drinkTypeCountMap {
    if (_drinkTypeCountMap is EqualUnmodifiableMapView)
      return _drinkTypeCountMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_drinkTypeCountMap);
  }

  @override
  String toString() {
    return 'TrackerDrinkAddReminderStepState.initial(drinkTypes: $drinkTypes, drinkTypeCountMap: $drinkTypeCountMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._drinkTypes, _drinkTypes) &&
            const DeepCollectionEquality()
                .equals(other._drinkTypeCountMap, _drinkTypeCountMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drinkTypes),
      const DeepCollectionEquality().hash(_drinkTypeCountMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)
        initial,
  }) {
    return initial(drinkTypes, drinkTypeCountMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)?
        initial,
  }) {
    return initial?.call(drinkTypes, drinkTypeCountMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<DrinkType> drinkTypes, Map<DrinkType, int> drinkTypeCountMap)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(drinkTypes, drinkTypeCountMap);
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

abstract class _Initial implements TrackerDrinkAddReminderStepState {
  const factory _Initial(
      {required final List<DrinkType> drinkTypes,
      required final Map<DrinkType, int> drinkTypeCountMap}) = _$_Initial;

  @override
  List<DrinkType> get drinkTypes;
  @override
  Map<DrinkType, int> get drinkTypeCountMap;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
