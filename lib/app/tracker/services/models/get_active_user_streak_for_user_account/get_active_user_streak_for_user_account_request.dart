import 'package:json_annotation/json_annotation.dart';

part 'get_active_user_streak_for_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetActiveUserStreakForUserAccountRequest {
  int? userAccountId;

  factory GetActiveUserStreakForUserAccountRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetActiveUserStreakForUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetActiveUserStreakForUserAccountRequestToJson(this);

  GetActiveUserStreakForUserAccountRequest({this.userAccountId});
}
