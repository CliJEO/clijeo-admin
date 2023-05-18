// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Query _$$_QueryFromJson(Map<String, dynamic> json) => _$_Query(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      closed: json['closed'] as bool,
      timestamp: json['timestamp'] as String,
      media: (json['media'] as List<dynamic>)
          .map((e) => QueryMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      responses: (json['responses'] as List<dynamic>)
          .map((e) => QueryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QueryToJson(_$_Query instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'closed': instance.closed,
      'timestamp': instance.timestamp,
      'media': instance.media,
      'responses': instance.responses,
    };
