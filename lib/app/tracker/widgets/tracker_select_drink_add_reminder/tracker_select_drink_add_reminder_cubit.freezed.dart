// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_select_drink_add_reminder_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerSelectDrinkAddReminderState {
  List<DrinkType> get drinkTypes => throw _privateConstructorUsedError;
  DrinkType? get selectedDrinkType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)?
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
  $TrackerSelectDrinkAddReminderStateCopyWith<
          TrackerSelectDrinkAddReminderState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerSelectDrinkAddReminderStateCopyWith<$Res> {
  factory $TrackerSelectDrinkAddReminderStateCopyWith(
          TrackerSelectDrinkAddReminderState value,
          $Res Function(TrackerSelectDrinkAddReminderState) then) =
      _$TrackerSelectDrinkAddReminderStateCopyWithImpl<$Res,
          TrackerSelectDrinkAddReminderState>;
  @useResult
  $Res call({List<DrinkType> drinkTypes, DrinkType? selectedDrinkType});
}

/// @nodoc
class _$TrackerSelectDrinkAddReminderStateCopyWithImpl<$Res,
        $Val extends TrackerSelectDrinkAddReminderState>
    implements $TrackerSelectDrinkAddReminderStateCopyWith<$Res> {
  _$TrackerSelectDrinkAddReminderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? selectedDrinkType = freezed,
  }) {
    return _then(_value.copyWith(
      drinkTypes: null == drinkTypes
          ? _value.drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      selectedDrinkType: freezed == selectedDrinkType
          ? _value.selectedDrinkType
          : selectedDrinkType // ignore: cast_nullable_to_non_nullable
              as DrinkType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerSelectDrinkAddReminderStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DrinkType> drinkTypes, DrinkType? selectedDrinkType});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerSelectDrinkAddReminderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkTypes = null,
    Object? selectedDrinkType = freezed,
  }) {
    return _then(_$_Initial(
      drinkTypes: null == drinkTypes
          ? _value._drinkTypes
          : drinkTypes // ignore: cast_nullable_to_non_nullable
              as List<DrinkType>,
      selectedDrinkType: freezed == selectedDrinkType
          ? _value.selectedDrinkType
          : selectedDrinkType // ignore: cast_nullable_to_non_nullable
              as DrinkType?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<DrinkType> drinkTypes, this.selectedDrinkType})
      : _drinkTypes = drinkTypes;

  final List<DrinkType> _drinkTypes;
  @override
  List<DrinkType> get drinkTypes {
    if (_drinkTypes is EqualUnmodifiableListView) return _drinkTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinkTypes);
  }

  @override
  final DrinkType? selectedDrinkType;

  @override
  String toString() {
    return 'TrackerSelectDrinkAddReminderState.initial(drinkTypes: $drinkTypes, selectedDrinkType: $selectedDrinkType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._drinkTypes, _drinkTypes) &&
            (identical(other.selectedDrinkType, selectedDrinkType) ||
                other.selectedDrinkType == selectedDrinkType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_drinkTypes), selectedDrinkType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)
        initial,
  }) {
    return initial(drinkTypes, selectedDrinkType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)?
        initial,
  }) {
    return initial?.call(drinkTypes, selectedDrinkType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DrinkType> drinkTypes, DrinkType? selectedDrinkType)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(drinkTypes, selectedDrinkType);
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

abstract class _Initial implements TrackerSelectDrinkAddReminderState {
  const factory _Initial(
      {required final List<DrinkType> drinkTypes,
      final DrinkType? selectedDrinkType}) = _$_Initial;

  @override
  List<DrinkType> get drinkTypes;
  @override
  DrinkType? get selectedDrinkType;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
