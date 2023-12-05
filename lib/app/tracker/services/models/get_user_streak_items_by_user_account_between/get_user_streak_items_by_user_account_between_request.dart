import 'package:json_annotation/json_annotation.dart';

part 'get_user_streak_items_by_user_account_between_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetUserStreakItemsByUserAccountBetweenRequest {
  int? userAccountId;
  DateTime? startTime;
  DateTime? endTime;

  factory GetUserStreakItemsByUserAccountBetweenRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetUserStreakItemsByUserAccountBetweenRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetUserStreakItemsByUserAccountBetweenRequestToJson(this);

  GetUserStreakItemsByUserAccountBetweenRequest({this.userAccountId, this.endTime, this.startTime});
}
