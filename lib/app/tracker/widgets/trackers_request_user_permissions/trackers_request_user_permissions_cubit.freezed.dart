// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trackers_request_user_permissions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackersRequestUserPermissionsState {
  String get notificationChannel => throw _privateConstructorUsedError;
  List<NotificationPermission> get notificationPermissions =>
      throw _privateConstructorUsedError;
  List<NotificationPermission>? get allowedPermissions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)?
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
  $TrackersRequestUserPermissionsStateCopyWith<
          TrackersRequestUserPermissionsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackersRequestUserPermissionsStateCopyWith<$Res> {
  factory $TrackersRequestUserPermissionsStateCopyWith(
          TrackersRequestUserPermissionsState value,
          $Res Function(TrackersRequestUserPermissionsState) then) =
      _$TrackersRequestUserPermissionsStateCopyWithImpl<$Res,
          TrackersRequestUserPermissionsState>;
  @useResult
  $Res call(
      {String notificationChannel,
      List<NotificationPermission> notificationPermissions,
      List<NotificationPermission>? allowedPermissions});
}

/// @nodoc
class _$TrackersRequestUserPermissionsStateCopyWithImpl<$Res,
        $Val extends TrackersRequestUserPermissionsState>
    implements $TrackersRequestUserPermissionsStateCopyWith<$Res> {
  _$TrackersRequestUserPermissionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationChannel = null,
    Object? notificationPermissions = null,
    Object? allowedPermissions = freezed,
  }) {
    return _then(_value.copyWith(
      notificationChannel: null == notificationChannel
          ? _value.notificationChannel
          : notificationChannel // ignore: cast_nullable_to_non_nullable
              as String,
      notificationPermissions: null == notificationPermissions
          ? _value.notificationPermissions
          : notificationPermissions // ignore: cast_nullable_to_non_nullable
              as List<NotificationPermission>,
      allowedPermissions: freezed == allowedPermissions
          ? _value.allowedPermissions
          : allowedPermissions // ignore: cast_nullable_to_non_nullable
              as List<NotificationPermission>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackersRequestUserPermissionsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationChannel,
      List<NotificationPermission> notificationPermissions,
      List<NotificationPermission>? allowedPermissions});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackersRequestUserPermissionsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationChannel = null,
    Object? notificationPermissions = null,
    Object? allowedPermissions = freezed,
  }) {
    return _then(_$_Initial(
      notificationChannel: null == notificationChannel
          ? _value.notificationChannel
          : notificationChannel // ignore: cast_nullable_to_non_nullable
              as String,
      notificationPermissions: null == notificationPermissions
          ? _value._notificationPermissions
          : notificationPermissions // ignore: cast_nullable_to_non_nullable
              as List<NotificationPermission>,
      allowedPermissions: freezed == allowedPermissions
          ? _value._allowedPermissions
          : allowedPermissions // ignore: cast_nullable_to_non_nullable
              as List<NotificationPermission>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.notificationChannel,
      required final List<NotificationPermission> notificationPermissions,
      final List<NotificationPermission>? allowedPermissions})
      : _notificationPermissions = notificationPermissions,
        _allowedPermissions = allowedPermissions;

  @override
  final String notificationChannel;
  final List<NotificationPermission> _notificationPermissions;
  @override
  List<NotificationPermission> get notificationPermissions {
    if (_notificationPermissions is EqualUnmodifiableListView)
      return _notificationPermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationPermissions);
  }

  final List<NotificationPermission>? _allowedPermissions;
  @override
  List<NotificationPermission>? get allowedPermissions {
    final value = _allowedPermissions;
    if (value == null) return null;
    if (_allowedPermissions is EqualUnmodifiableListView)
      return _allowedPermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrackersRequestUserPermissionsState.initial(notificationChannel: $notificationChannel, notificationPermissions: $notificationPermissions, allowedPermissions: $allowedPermissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.notificationChannel, notificationChannel) ||
                other.notificationChannel == notificationChannel) &&
            const DeepCollectionEquality().equals(
                other._notificationPermissions, _notificationPermissions) &&
            const DeepCollectionEquality()
                .equals(other._allowedPermissions, _allowedPermissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationChannel,
      const DeepCollectionEquality().hash(_notificationPermissions),
      const DeepCollectionEquality().hash(_allowedPermissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)
        initial,
  }) {
    return initial(
        notificationChannel, notificationPermissions, allowedPermissions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)?
        initial,
  }) {
    return initial?.call(
        notificationChannel, notificationPermissions, allowedPermissions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String notificationChannel,
            List<NotificationPermission> notificationPermissions,
            List<NotificationPermission>? allowedPermissions)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          notificationChannel, notificationPermissions, allowedPermissions);
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

abstract class _Initial implements TrackersRequestUserPermissionsState {
  const factory _Initial(
      {required final String notificationChannel,
      required final List<NotificationPermission> notificationPermissions,
      final List<NotificationPermission>? allowedPermissions}) = _$_Initial;

  @override
  String get notificationChannel;
  @override
  List<NotificationPermission> get notificationPermissions;
  @override
  List<NotificationPermission>? get allowedPermissions;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
