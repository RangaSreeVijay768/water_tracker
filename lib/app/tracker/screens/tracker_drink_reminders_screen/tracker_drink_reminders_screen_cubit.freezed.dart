// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_drink_reminders_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDrinkRemindersScreenState {
  PageStatus get pageStatus => throw _privateConstructorUsedError;
  TrackersRequestUserPermissionsState? get requestUserPermissionsState =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)?
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
  $TrackerDrinkRemindersScreenStateCopyWith<TrackerDrinkRemindersScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDrinkRemindersScreenStateCopyWith<$Res> {
  factory $TrackerDrinkRemindersScreenStateCopyWith(
          TrackerDrinkRemindersScreenState value,
          $Res Function(TrackerDrinkRemindersScreenState) then) =
      _$TrackerDrinkRemindersScreenStateCopyWithImpl<$Res,
          TrackerDrinkRemindersScreenState>;
  @useResult
  $Res call(
      {PageStatus pageStatus,
      TrackersRequestUserPermissionsState? requestUserPermissionsState});

  $TrackersRequestUserPermissionsStateCopyWith<$Res>?
      get requestUserPermissionsState;
}

/// @nodoc
class _$TrackerDrinkRemindersScreenStateCopyWithImpl<$Res,
        $Val extends TrackerDrinkRemindersScreenState>
    implements $TrackerDrinkRemindersScreenStateCopyWith<$Res> {
  _$TrackerDrinkRemindersScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? requestUserPermissionsState = freezed,
  }) {
    return _then(_value.copyWith(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      requestUserPermissionsState: freezed == requestUserPermissionsState
          ? _value.requestUserPermissionsState
          : requestUserPermissionsState // ignore: cast_nullable_to_non_nullable
              as TrackersRequestUserPermissionsState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackersRequestUserPermissionsStateCopyWith<$Res>?
      get requestUserPermissionsState {
    if (_value.requestUserPermissionsState == null) {
      return null;
    }

    return $TrackersRequestUserPermissionsStateCopyWith<$Res>(
        _value.requestUserPermissionsState!, (value) {
      return _then(_value.copyWith(requestUserPermissionsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDrinkRemindersScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageStatus pageStatus,
      TrackersRequestUserPermissionsState? requestUserPermissionsState});

  @override
  $TrackersRequestUserPermissionsStateCopyWith<$Res>?
      get requestUserPermissionsState;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDrinkRemindersScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? requestUserPermissionsState = freezed,
  }) {
    return _then(_$_Initial(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      requestUserPermissionsState: freezed == requestUserPermissionsState
          ? _value.requestUserPermissionsState
          : requestUserPermissionsState // ignore: cast_nullable_to_non_nullable
              as TrackersRequestUserPermissionsState?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.pageStatus = PageStatus.loaded, this.requestUserPermissionsState});

  @override
  @JsonKey()
  final PageStatus pageStatus;
  @override
  final TrackersRequestUserPermissionsState? requestUserPermissionsState;

  @override
  String toString() {
    return 'TrackerDrinkRemindersScreenState.initial(pageStatus: $pageStatus, requestUserPermissionsState: $requestUserPermissionsState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.requestUserPermissionsState,
                    requestUserPermissionsState) ||
                other.requestUserPermissionsState ==
                    requestUserPermissionsState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageStatus, requestUserPermissionsState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)
        initial,
  }) {
    return initial(pageStatus, requestUserPermissionsState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)?
        initial,
  }) {
    return initial?.call(pageStatus, requestUserPermissionsState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageStatus pageStatus,
            TrackersRequestUserPermissionsState? requestUserPermissionsState)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pageStatus, requestUserPermissionsState);
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

abstract class _Initial implements TrackerDrinkRemindersScreenState {
  const factory _Initial(
      {final PageStatus pageStatus,
      final TrackersRequestUserPermissionsState?
          requestUserPermissionsState}) = _$_Initial;

  @override
  PageStatus get pageStatus;
  @override
  TrackersRequestUserPermissionsState? get requestUserPermissionsState;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
