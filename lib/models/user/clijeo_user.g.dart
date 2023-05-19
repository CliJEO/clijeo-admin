// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clijeo_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClijeoUser _$$_ClijeoUserFromJson(Map<String, dynamic> json) =>
    _$_ClijeoUser(
      name: json['name'] as String,
      activeQueries: (json['activeQueries'] as List<dynamic>)
          .map((e) => UserQuery.fromJson(e as Map<String, dynamic>))
          .toList(),
      archivedQueries: (json['archivedQueries'] as List<dynamic>)
          .map((e) => UserQuery.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClijeoUserToJson(_$_ClijeoUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'activeQueries': instance.activeQueries,
      'archivedQueries': instance.archivedQueries,
    };
