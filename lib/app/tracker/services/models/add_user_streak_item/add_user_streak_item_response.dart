import 'package:json_annotation/json_annotation.dart';

part 'add_user_streak_item_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddUserStreakItemResponse {
  factory AddUserStreakItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AddUserStreakItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserStreakItemResponseToJson(this);

  AddUserStreakItemResponse();
}
