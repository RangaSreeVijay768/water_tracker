// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_by_string_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupByStringCount {
  String get group => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String group, int count) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String group, int count)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String group, int count)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupByStringCount value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GroupByStringCount value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupByStringCount value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupByStringCountCopyWith<GroupByStringCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupByStringCountCopyWith<$Res> {
  factory $GroupByStringCountCopyWith(
          GroupByStringCount value, $Res Function(GroupByStringCount) then) =
      _$GroupByStringCountCopyWithImpl<$Res, GroupByStringCount>;
  @useResult
  $Res call({String group, int count});
}

/// @nodoc
class _$GroupByStringCountCopyWithImpl<$Res, $Val extends GroupByStringCount>
    implements $GroupByStringCountCopyWith<$Res> {
  _$GroupByStringCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupByStringCountCopyWith<$Res>
    implements $GroupByStringCountCopyWith<$Res> {
  factory _$$_GroupByStringCountCopyWith(_$_GroupByStringCount value,
          $Res Function(_$_GroupByStringCount) then) =
      __$$_GroupByStringCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String group, int count});
}

/// @nodoc
class __$$_GroupByStringCountCopyWithImpl<$Res>
    extends _$GroupByStringCountCopyWithImpl<$Res, _$_GroupByStringCount>
    implements _$$_GroupByStringCountCopyWith<$Res> {
  __$$_GroupByStringCountCopyWithImpl(
      _$_GroupByStringCount _value, $Res Function(_$_GroupByStringCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? count = null,
  }) {
    return _then(_$_GroupByStringCount(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GroupByStringCount implements _GroupByStringCount {
  const _$_GroupByStringCount({this.group = "", this.count = 0});

  @override
  @JsonKey()
  final String group;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'GroupByStringCount.initial(group: $group, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupByStringCount &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupByStringCountCopyWith<_$_GroupByStringCount> get copyWith =>
      __$$_GroupByStringCountCopyWithImpl<_$_GroupByStringCount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String group, int count) initial,
  }) {
    return initial(group, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String group, int count)? initial,
  }) {
    return initial?.call(group, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String group, int count)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(group, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GroupByStringCount value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GroupByStringCount value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GroupByStringCount value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GroupByStringCount implements GroupByStringCount {
  const factory _GroupByStringCount({final String group, final int count}) =
      _$_GroupByStringCount;

  @override
  String get group;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_GroupByStringCountCopyWith<_$_GroupByStringCount> get copyWith =>
      throw _privateConstructorUsedError;
}
