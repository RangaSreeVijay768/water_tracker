import 'package:json_annotation/json_annotation.dart';

part 'add_user_streak_item_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddUserStreakItemRequest {
  int? userAccountId;
  DateTime? dateTime;

  factory AddUserStreakItemRequest.fromJson(Map<String, dynamic> json) =>
      _$AddUserStreakItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddUserStreakItemRequestToJson(this);

  AddUserStreakItemRequest({this.userAccountId, this.dateTime});
}
