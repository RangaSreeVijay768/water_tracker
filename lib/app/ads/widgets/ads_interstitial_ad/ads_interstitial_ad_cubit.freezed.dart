// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_interstitial_ad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdsInterstitialAdState {
  String? get adUnitId => throw _privateConstructorUsedError;
  InterstitialAd? get interstitialAd => throw _privateConstructorUsedError;
  ApiStateStatus get loadingStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)?
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
  $AdsInterstitialAdStateCopyWith<AdsInterstitialAdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsInterstitialAdStateCopyWith<$Res> {
  factory $AdsInterstitialAdStateCopyWith(AdsInterstitialAdState value,
          $Res Function(AdsInterstitialAdState) then) =
      _$AdsInterstitialAdStateCopyWithImpl<$Res, AdsInterstitialAdState>;
  @useResult
  $Res call(
      {String? adUnitId,
      InterstitialAd? interstitialAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class _$AdsInterstitialAdStateCopyWithImpl<$Res,
        $Val extends AdsInterstitialAdState>
    implements $AdsInterstitialAdStateCopyWith<$Res> {
  _$AdsInterstitialAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = freezed,
    Object? interstitialAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: freezed == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      interstitialAd: freezed == interstitialAd
          ? _value.interstitialAd
          : interstitialAd // ignore: cast_nullable_to_non_nullable
              as InterstitialAd?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AdsInterstitialAdStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? adUnitId,
      InterstitialAd? interstitialAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AdsInterstitialAdStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = freezed,
    Object? interstitialAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_$_Initial(
      adUnitId: freezed == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      interstitialAd: freezed == interstitialAd
          ? _value.interstitialAd
          : interstitialAd // ignore: cast_nullable_to_non_nullable
              as InterstitialAd?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.adUnitId, this.interstitialAd, required this.loadingStatus});

  @override
  final String? adUnitId;
  @override
  final InterstitialAd? interstitialAd;
  @override
  final ApiStateStatus loadingStatus;

  @override
  String toString() {
    return 'AdsInterstitialAdState.initial(adUnitId: $adUnitId, interstitialAd: $interstitialAd, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.interstitialAd, interstitialAd) ||
                other.interstitialAd == interstitialAd) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, adUnitId, interstitialAd, loadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)
        initial,
  }) {
    return initial(adUnitId, interstitialAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)?
        initial,
  }) {
    return initial?.call(adUnitId, interstitialAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? adUnitId, InterstitialAd? interstitialAd,
            ApiStateStatus loadingStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(adUnitId, interstitialAd, loadingStatus);
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

abstract class _Initial implements AdsInterstitialAdState {
  const factory _Initial(
      {final String? adUnitId,
      final InterstitialAd? interstitialAd,
      required final ApiStateStatus loadingStatus}) = _$_Initial;

  @override
  String? get adUnitId;
  @override
  InterstitialAd? get interstitialAd;
  @override
  ApiStateStatus get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
