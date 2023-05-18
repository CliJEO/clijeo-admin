// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserQuery _$$_UserQueryFromJson(Map<String, dynamic> json) => _$_UserQuery(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      closed: json['closed'] as bool,
      timestamp: json['timestamp'] as String,
      responseCount: json['responseCount'] as int,
    );

Map<String, dynamic> _$$_UserQueryToJson(_$_UserQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'closed': instance.closed,
      'timestamp': instance.timestamp,
      'responseCount': instance.responseCount,
    };
