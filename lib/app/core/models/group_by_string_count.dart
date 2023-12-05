import'package:freezed_annotation/freezed_annotation.dart';


part 'group_by_string_count.freezed.dart';

@freezed
class GroupByStringCount with _$GroupByStringCount {

  const factory GroupByStringCount.initial(
      {@Default("") String group, @Default(0) int count}) = _GroupByStringCount;

}
