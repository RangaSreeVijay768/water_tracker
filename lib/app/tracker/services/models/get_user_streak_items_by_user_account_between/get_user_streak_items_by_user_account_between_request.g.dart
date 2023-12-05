// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_streak_items_by_user_account_between_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserStreakItemsByUserAccountBetweenRequest
    _$GetUserStreakItemsByUserAccountBetweenRequestFromJson(
            Map<String, dynamic> json) =>
        GetUserStreakItemsByUserAccountBetweenRequest(
          userAccountId: json['user_account_id'] as int?,
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
        );

Map<String, dynamic> _$GetUserStreakItemsByUserAccountBetweenRequestToJson(
        GetUserStreakItemsByUserAccountBetweenRequest instance) =>
    <String, dynamic>{
      'user_account_id': instance.userAccountId,
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
    };
