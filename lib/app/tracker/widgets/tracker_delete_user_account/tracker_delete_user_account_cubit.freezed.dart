// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_delete_user_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerDeleteUserAccountState {
  UserAccount get userAccount => throw _privateConstructorUsedError;
  BooleanStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount userAccount, BooleanStatus status)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount, BooleanStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount, BooleanStatus status)? initial,
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
  $TrackerDeleteUserAccountStateCopyWith<TrackerDeleteUserAccountState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDeleteUserAccountStateCopyWith<$Res> {
  factory $TrackerDeleteUserAccountStateCopyWith(
          TrackerDeleteUserAccountState value,
          $Res Function(TrackerDeleteUserAccountState) then) =
      _$TrackerDeleteUserAccountStateCopyWithImpl<$Res,
          TrackerDeleteUserAccountState>;
  @useResult
  $Res call({UserAccount userAccount, BooleanStatus status});
}

/// @nodoc
class _$TrackerDeleteUserAccountStateCopyWithImpl<$Res,
        $Val extends TrackerDeleteUserAccountState>
    implements $TrackerDeleteUserAccountStateCopyWith<$Res> {
  _$TrackerDeleteUserAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerDeleteUserAccountStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAccount userAccount, BooleanStatus status});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerDeleteUserAccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = freezed,
    Object? status = null,
  }) {
    return _then(_$_Initial(
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.userAccount, this.status = BooleanStatus.initial});

  @override
  final UserAccount userAccount;
  @override
  @JsonKey()
  final BooleanStatus status;

  @override
  String toString() {
    return 'TrackerDeleteUserAccountState.initial(userAccount: $userAccount, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.userAccount, userAccount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userAccount), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserAccount userAccount, BooleanStatus status)
        initial,
  }) {
    return initial(userAccount, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserAccount userAccount, BooleanStatus status)? initial,
  }) {
    return initial?.call(userAccount, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserAccount userAccount, BooleanStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userAccount, status);
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

abstract class _Initial implements TrackerDeleteUserAccountState {
  const factory _Initial(
      {required final UserAccount userAccount,
      final BooleanStatus status}) = _$_Initial;

  @override
  UserAccount get userAccount;
  @override
  BooleanStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
