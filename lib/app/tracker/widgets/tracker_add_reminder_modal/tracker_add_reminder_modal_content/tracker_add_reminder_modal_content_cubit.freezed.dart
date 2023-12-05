// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_add_reminder_modal_content_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerAddReminderModalContentState {
  List<DrinkType> get drinkTypes => throw _privateConstructorUsedError;
  TimeOfDay get selectedTime => throw _privateConstructorUsedError;
  DrinkType get selectedDrinkType => throw _privateConstructorUsedError;
  bool get buttonStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes,
            TimeOfDay selectedTime,
            DrinkType selectedDrinkType,
            bool buttonStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkType> drinkTypes, TimeOfDay selectedTime,
            DrinkType selectedDrinkType, bool buttonStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkType> drinkTypes, TimeOfDay selectedTime,
            DrinkType selectedDrinkType, bool buttonStatus)?
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
  $TrackerAddReminderModalContentStateCopyWith<
          TrackerAddReminderModalContentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerAddReminderModalContentStateCopyWith<$Res> {
  factory $TrackerAddReminderModalContentStateCopyWith(
          TrackerAddReminderModalContentState value,
          $Res Function(TrackerAddReminderModalContentState) then) =
      _$TrackerAddReminderModalContentStateCopyWithImpl<$Res,
          TrackerAddReminderModalContentState>;
  @useResult
  $Res call(
      {List<DrinkType> drinkTypes,
      TimeOfDay selectedTime,
      DrinkType selectedDrinkType,
      bool buttonStatus});
}

/// @nodoc
class _$TrackerAddReminderModalContentStateCopyWithImpl<$Res,
        $Val extends TrackerAddReminderModalContentState>
    implements $TrackerAddReminderModalContentStateCopyWith<$Res> {
  _$TrackerAddReminderModalContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? selectedTime = null,
    Object? selectedDrinkType = null,
    Object? buttonStatus = null,
  }) {
    return _then(_value.copyWith(
      drinkTypes: null == drinkTypes
          ? _value.drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedDrinkType: null == selectedDrinkType
          ? _value.selectedDrinkType
          : selectedDrinkType // ignore: cast_nullable_to_non_nullable
              as DrinkType,
      buttonStatus: null == buttonStatus
          ? _value.buttonStatus
          : buttonStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerAddReminderModalContentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DrinkType> drinkTypes,
      TimeOfDay selectedTime,
      DrinkType selectedDrinkType,
      bool buttonStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerAddReminderModalContentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? selectedTime = null,
    Object? selectedDrinkType = null,
    Object? buttonStatus = null,
  }) {
    return _then(_$_Initial(
      drinkTypes: null == drinkTypes
          ? _value._drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      selectedTime: null == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      selectedDrinkType: null == selectedDrinkType
          ? _value.selectedDrinkType
          : selectedDrinkType // ignore: cast_nullable_to_non_nullable
              as DrinkType,
      buttonStatus: null == buttonStatus
          ? _value.buttonStatus
          : buttonStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DrinkType> drinkTypes,
      required this.selectedTime,
      required this.selectedDrinkType,
      this.buttonStatus = false})
      : _drinkTypes = drinkTypes;

  final List<DrinkType> _drinkTypes;
  @override
  List<DrinkType> get drinkTypes {
    if (_drinkTypes is EqualUnmodifiableListView) return _drinkTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinkTypes);
  }

  @override
  final TimeOfDay selectedTime;
  @override
  final DrinkType selectedDrinkType;
  @override
  @JsonKey()
  final bool buttonStatus;

  @override
  String toString() {
    return 'TrackerAddReminderModalContentState.initial(drinkTypes: $drinkTypes, selectedTime: $selectedTime, selectedDrinkType: $selectedDrinkType, buttonStatus: $buttonStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._drinkTypes, _drinkTypes) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.selectedDrinkType, selectedDrinkType) ||
                other.selectedDrinkType == selectedDrinkType) &&
            (identical(other.buttonStatus, buttonStatus) ||
                other.buttonStatus == buttonStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drinkTypes),
      selectedTime,
      selectedDrinkType,
      buttonStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes,
            TimeOfDay selectedTime,
            DrinkType selectedDrinkType,
            bool buttonStatus)
        initial,
  }) {
    return initial(drinkTypes, selectedTime, selectedDrinkType, buttonStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkType> drinkTypes, TimeOfDay selectedTime,
            DrinkType selectedDrinkType, bool buttonStatus)?
        initial,
  }) {
    return initial?.call(
        drinkTypes, selectedTime, selectedDrinkType, buttonStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkType> drinkTypes, TimeOfDay selectedTime,
            DrinkType selectedDrinkType, bool buttonStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(drinkTypes, selectedTime, selectedDrinkType, buttonStatus);
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

abstract class _Initial implements TrackerAddReminderModalContentState {
  const factory _Initial(
      {required final List<DrinkType> drinkTypes,
      required final TimeOfDay selectedTime,
      required final DrinkType selectedDrinkType,
      final bool buttonStatus}) = _$_Initial;

  @override
  List<DrinkType> get drinkTypes;
  @override
  TimeOfDay get selectedTime;
  @override
  DrinkType get selectedDrinkType;
  @override
  bool get buttonStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
