import 'package:json_annotation/json_annotation.dart';

part 'get_or_create_user_streak_for_user_account_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GetOrCreateUserStreakForUserAccountRequest {
  int? userAccountId;

  factory GetOrCreateUserStreakForUserAccountRequest.fromJson(
          Map<String, dynamic> json) =>
      _$GetOrCreateUserStreakForUserAccountRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetOrCreateUserStreakForUserAccountRequestToJson(this);

  GetOrCreateUserStreakForUserAccountRequest({this.userAccountId});
}
