// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_received_notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsReceivedNotificationsState {
  BooleanStatus get status => throw _privateConstructorUsedError;
  ReceivedAction? get action => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanStatus status, ReceivedAction? action)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanStatus status, ReceivedAction? action)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanStatus status, ReceivedAction? action)? initial,
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
  $NotificationsReceivedNotificationsStateCopyWith<
          NotificationsReceivedNotificationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsReceivedNotificationsStateCopyWith<$Res> {
  factory $NotificationsReceivedNotificationsStateCopyWith(
          NotificationsReceivedNotificationsState value,
          $Res Function(NotificationsReceivedNotificationsState) then) =
      _$NotificationsReceivedNotificationsStateCopyWithImpl<$Res,
          NotificationsReceivedNotificationsState>;
  @useResult
  $Res call({BooleanStatus status, ReceivedAction? action});
}

/// @nodoc
class _$NotificationsReceivedNotificationsStateCopyWithImpl<$Res,
        $Val extends NotificationsReceivedNotificationsState>
    implements $NotificationsReceivedNotificationsStateCopyWith<$Res> {
  _$NotificationsReceivedNotificationsStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ReceivedAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $NotificationsReceivedNotificationsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BooleanStatus status, ReceivedAction? action});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationsReceivedNotificationsStateCopyWithImpl<$Res,
        _$_Initial> implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? action = freezed,
  }) {
    return _then(_$_Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ReceivedAction?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.status = BooleanStatus.initial, this.action});

  @override
  @JsonKey()
  final BooleanStatus status;
  @override
  final ReceivedAction? action;

  @override
  String toString() {
    return 'NotificationsReceivedNotificationsState.initial(status: $status, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanStatus status, ReceivedAction? action)
        initial,
  }) {
    return initial(status, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanStatus status, ReceivedAction? action)? initial,
  }) {
    return initial?.call(status, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanStatus status, ReceivedAction? action)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, action);
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

abstract class _Initial implements NotificationsReceivedNotificationsState {
  const factory _Initial(
      {final BooleanStatus status, final ReceivedAction? action}) = _$_Initial;

  @override
  BooleanStatus get status;
  @override
  ReceivedAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
