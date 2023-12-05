// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_streak_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUserStreakItemRequest _$AddUserStreakItemRequestFromJson(
        Map<String, dynamic> json) =>
    AddUserStreakItemRequest(
      userAccountId: json['user_account_id'] as int?,
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
    );

Map<String, dynamic> _$AddUserStreakItemRequestToJson(
        AddUserStreakItemRequest instance) =>
    <String, dynamic>{
      'user_account_id': instance.userAccountId,
      'date_time': instance.dateTime?.toIso8601String(),
    };
