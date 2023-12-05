// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_native_ad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdsNativeAdState {
  String? get adUnitId => throw _privateConstructorUsedError;
  bool get showAd => throw _privateConstructorUsedError;
  TemplateType get templateType => throw _privateConstructorUsedError;
  ApiStateStatus get loadingStatus => throw _privateConstructorUsedError;
  NativeAd? get nativeAd => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? adUnitId,
            bool showAd,
            TemplateType templateType,
            ApiStateStatus loadingStatus,
            NativeAd? nativeAd)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? adUnitId, bool showAd, TemplateType templateType,
            ApiStateStatus loadingStatus, NativeAd? nativeAd)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? adUnitId, bool showAd, TemplateType templateType,
            ApiStateStatus loadingStatus, NativeAd? nativeAd)?
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
  $AdsNativeAdStateCopyWith<AdsNativeAdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsNativeAdStateCopyWith<$Res> {
  factory $AdsNativeAdStateCopyWith(
          AdsNativeAdState value, $Res Function(AdsNativeAdState) then) =
      _$AdsNativeAdStateCopyWithImpl<$Res, AdsNativeAdState>;
  @useResult
  $Res call(
      {String? adUnitId,
      bool showAd,
      TemplateType templateType,
      ApiStateStatus loadingStatus,
      NativeAd? nativeAd});
}

/// @nodoc
class _$AdsNativeAdStateCopyWithImpl<$Res, $Val extends AdsNativeAdState>
    implements $AdsNativeAdStateCopyWith<$Res> {
  _$AdsNativeAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = freezed,
    Object? showAd = null,
    Object? templateType = null,
    Object? loadingStatus = null,
    Object? nativeAd = freezed,
  }) {
    return _then(_value.copyWith(
      adUnitId: freezed == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      showAd: null == showAd
          ? _value.showAd
          : showAd // ignore: cast_nullable_to_non_nullable
              as bool,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AdsNativeAdStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? adUnitId,
      bool showAd,
      TemplateType templateType,
      ApiStateStatus loadingStatus,
      NativeAd? nativeAd});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AdsNativeAdStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = freezed,
    Object? showAd = null,
    Object? templateType = null,
    Object? loadingStatus = null,
    Object? nativeAd = freezed,
  }) {
    return _then(_$_Initial(
      adUnitId: freezed == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      showAd: null == showAd
          ? _value.showAd
          : showAd // ignore: cast_nullable_to_non_nullable
              as bool,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.adUnitId,
      this.showAd = false,
      required this.templateType,
      required this.loadingStatus,
      this.nativeAd});

  @override
  final String? adUnitId;
  @override
  @JsonKey()
  final bool showAd;
  @override
  final TemplateType templateType;
  @override
  final ApiStateStatus loadingStatus;
  @override
  final NativeAd? nativeAd;

  @override
  String toString() {
    return 'AdsNativeAdState.initial(adUnitId: $adUnitId, showAd: $showAd, templateType: $templateType, loadingStatus: $loadingStatus, nativeAd: $nativeAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.showAd, showAd) || other.showAd == showAd) &&
            (identical(other.templateType, templateType) ||
                other.templateType == templateType) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.nativeAd, nativeAd) ||
                other.nativeAd == nativeAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, adUnitId, showAd, templateType, loadingStatus, nativeAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? adUnitId,
            bool showAd,
            TemplateType templateType,
            ApiStateStatus loadingStatus,
            NativeAd? nativeAd)
        initial,
  }) {
    return initial(adUnitId, showAd, templateType, loadingStatus, nativeAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? adUnitId, bool showAd, TemplateType templateType,
            ApiStateStatus loadingStatus, NativeAd? nativeAd)?
        initial,
  }) {
    return initial?.call(
        adUnitId, showAd, templateType, loadingStatus, nativeAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? adUnitId, bool showAd, TemplateType templateType,
            ApiStateStatus loadingStatus, NativeAd? nativeAd)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(adUnitId, showAd, templateType, loadingStatus, nativeAd);
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

abstract class _Initial implements AdsNativeAdState {
  const factory _Initial(
      {final String? adUnitId,
      final bool showAd,
      required final TemplateType templateType,
      required final ApiStateStatus loadingStatus,
      final NativeAd? nativeAd}) = _$_Initial;

  @override
  String? get adUnitId;
  @override
  bool get showAd;
  @override
  TemplateType get templateType;
  @override
  ApiStateStatus get loadingStatus;
  @override
  NativeAd? get nativeAd;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
