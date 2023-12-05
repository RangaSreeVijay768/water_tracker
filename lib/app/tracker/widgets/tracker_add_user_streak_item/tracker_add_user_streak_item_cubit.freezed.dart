// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_add_user_streak_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerAddUserStreakItemState {
  UserAccount get userAccount => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  AddUserStreakItemResponse? get addUserStreakItemResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get addUserStreakItemStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)?
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
  $TrackerAddUserStreakItemStateCopyWith<TrackerAddUserStreakItemState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerAddUserStreakItemStateCopyWith<$Res> {
  factory $TrackerAddUserStreakItemStateCopyWith(
          TrackerAddUserStreakItemState value,
          $Res Function(TrackerAddUserStreakItemState) then) =
      _$TrackerAddUserStreakItemStateCopyWithImpl<$Res,
          TrackerAddUserStreakItemState>;
  @useResult
  $Res call(
      {UserAccount userAccount,
      DateTime dateTime,
      AddUserStreakItemResponse? addUserStreakItemResponse,
      BooleanStatus addUserStreakItemStatus});
}

/// @nodoc
class _$TrackerAddUserStreakItemStateCopyWithImpl<$Res,
        $Val extends TrackerAddUserStreakItemState>
    implements $TrackerAddUserStreakItemStateCopyWith<$Res> {
  _$TrackerAddUserStreakItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
    Object? dateTime = null,
    Object? addUserStreakItemResponse = freezed,
    Object? addUserStreakItemStatus = null,
  }) {
    return _then(_value.copyWith(
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      addUserStreakItemResponse: freezed == addUserStreakItemResponse
          ? _value.addUserStreakItemResponse
          : addUserStreakItemResponse // ignore: cast_nullable_to_non_nullable
              as AddUserStreakItemResponse?,
      addUserStreakItemStatus: null == addUserStreakItemStatus
          ? _value.addUserStreakItemStatus
          : addUserStreakItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerAddUserStreakItemStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserAccount userAccount,
      DateTime dateTime,
      AddUserStreakItemResponse? addUserStreakItemResponse,
      BooleanStatus addUserStreakItemStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerAddUserStreakItemStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
    Object? dateTime = null,
    Object? addUserStreakItemResponse = freezed,
    Object? addUserStreakItemStatus = null,
  }) {
    return _then(_$_Initial(
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      addUserStreakItemResponse: freezed == addUserStreakItemResponse
          ? _value.addUserStreakItemResponse
          : addUserStreakItemResponse // ignore: cast_nullable_to_non_nullable
              as AddUserStreakItemResponse?,
      addUserStreakItemStatus: null == addUserStreakItemStatus
          ? _value.addUserStreakItemStatus
          : addUserStreakItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.userAccount,
      required this.dateTime,
      this.addUserStreakItemResponse,
      this.addUserStreakItemStatus = BooleanStatus.initial});

  @override
  final UserAccount userAccount;
  @override
  final DateTime dateTime;
  @override
  final AddUserStreakItemResponse? addUserStreakItemResponse;
  @override
  @JsonKey()
  final BooleanStatus addUserStreakItemStatus;

  @override
  String toString() {
    return 'TrackerAddUserStreakItemState.initial(userAccount: $userAccount, dateTime: $dateTime, addUserStreakItemResponse: $addUserStreakItemResponse, addUserStreakItemStatus: $addUserStreakItemStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.addUserStreakItemResponse,
                    addUserStreakItemResponse) ||
                other.addUserStreakItemResponse == addUserStreakItemResponse) &&
            (identical(
                    other.addUserStreakItemStatus, addUserStreakItemStatus) ||
                other.addUserStreakItemStatus == addUserStreakItemStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccount, dateTime,
      addUserStreakItemResponse, addUserStreakItemStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)
        initial,
  }) {
    return initial(userAccount, dateTime, addUserStreakItemResponse,
        addUserStreakItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)?
        initial,
  }) {
    return initial?.call(userAccount, dateTime, addUserStreakItemResponse,
        addUserStreakItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            UserAccount userAccount,
            DateTime dateTime,
            AddUserStreakItemResponse? addUserStreakItemResponse,
            BooleanStatus addUserStreakItemStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userAccount, dateTime, addUserStreakItemResponse,
          addUserStreakItemStatus);
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

abstract class _Initial implements TrackerAddUserStreakItemState {
  const factory _Initial(
      {required final UserAccount userAccount,
      required final DateTime dateTime,
      final AddUserStreakItemResponse? addUserStreakItemResponse,
      final BooleanStatus addUserStreakItemStatus}) = _$_Initial;

  @override
  UserAccount get userAccount;
  @override
  DateTime get dateTime;
  @override
  AddUserStreakItemResponse? get addUserStreakItemResponse;
  @override
  BooleanStatus get addUserStreakItemStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
