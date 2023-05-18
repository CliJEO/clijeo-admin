// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueryResponse _$$_QueryResponseFromJson(Map<String, dynamic> json) =>
    _$_QueryResponse(
      content: json['content'] as String,
      timestamp: json['timestamp'] as String,
      admin: json['admin'] == null
          ? null
          : QueryResponseAdminDetails.fromJson(
              json['admin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QueryResponseToJson(_$_QueryResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'timestamp': instance.timestamp,
      'admin': instance.admin,
    };
