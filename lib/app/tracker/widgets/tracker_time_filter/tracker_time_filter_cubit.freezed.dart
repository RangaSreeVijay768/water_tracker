// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_time_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerTimeFilterState {
  List<TimeFilter> get timeFilters => throw _privateConstructorUsedError;
  TimeFilter get selectedTimeFilter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)?
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
  $TrackerTimeFilterStateCopyWith<TrackerTimeFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerTimeFilterStateCopyWith<$Res> {
  factory $TrackerTimeFilterStateCopyWith(TrackerTimeFilterState value,
          $Res Function(TrackerTimeFilterState) then) =
      _$TrackerTimeFilterStateCopyWithImpl<$Res, TrackerTimeFilterState>;
  @useResult
  $Res call({List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter});
}

/// @nodoc
class _$TrackerTimeFilterStateCopyWithImpl<$Res,
        $Val extends TrackerTimeFilterState>
    implements $TrackerTimeFilterStateCopyWith<$Res> {
  _$TrackerTimeFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeFilters = null,
    Object? selectedTimeFilter = null,
  }) {
    return _then(_value.copyWith(
      timeFilters: null == timeFilters
          ? _value.timeFilters
          : timeFilters // ignore: cast_nullable_to_non_nullable
              as List<TimeFilter>,
      selectedTimeFilter: null == selectedTimeFilter
          ? _value.selectedTimeFilter
          : selectedTimeFilter // ignore: cast_nullable_to_non_nullable
              as TimeFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerTimeFilterStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerTimeFilterStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeFilters = null,
    Object? selectedTimeFilter = null,
  }) {
    return _then(_$_Initial(
      timeFilters: null == timeFilters
          ? _value._timeFilters
          : timeFilters // ignore: cast_nullable_to_non_nullable
              as List<TimeFilter>,
      selectedTimeFilter: null == selectedTimeFilter
          ? _value.selectedTimeFilter
          : selectedTimeFilter // ignore: cast_nullable_to_non_nullable
              as TimeFilter,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<TimeFilter> timeFilters,
      required this.selectedTimeFilter})
      : _timeFilters = timeFilters;

  final List<TimeFilter> _timeFilters;
  @override
  List<TimeFilter> get timeFilters {
    if (_timeFilters is EqualUnmodifiableListView) return _timeFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeFilters);
  }

  @override
  final TimeFilter selectedTimeFilter;

  @override
  String toString() {
    return 'TrackerTimeFilterState.initial(timeFilters: $timeFilters, selectedTimeFilter: $selectedTimeFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._timeFilters, _timeFilters) &&
            (identical(other.selectedTimeFilter, selectedTimeFilter) ||
                other.selectedTimeFilter == selectedTimeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_timeFilters), selectedTimeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)
        initial,
  }) {
    return initial(timeFilters, selectedTimeFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)?
        initial,
  }) {
    return initial?.call(timeFilters, selectedTimeFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<TimeFilter> timeFilters, TimeFilter selectedTimeFilter)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(timeFilters, selectedTimeFilter);
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

abstract class _Initial implements TrackerTimeFilterState {
  const factory _Initial(
      {required final List<TimeFilter> timeFilters,
      required final TimeFilter selectedTimeFilter}) = _$_Initial;

  @override
  List<TimeFilter> get timeFilters;
  @override
  TimeFilter get selectedTimeFilter;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
