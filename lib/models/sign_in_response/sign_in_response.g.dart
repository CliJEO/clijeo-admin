// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInResponse _$$_SignInResponseFromJson(Map<String, dynamic> json) =>
    _$_SignInResponse(
      firstLogin: json['firstLogin'] as bool,
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'firstLogin': instance.firstLogin,
      'jwt': instance.jwt,
    };
