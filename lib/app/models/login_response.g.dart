// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      id: json['id'] as int?,
      accessToken: json['accessToken'] as String?,
      email: json['email'] as String?,
      mobilenumber: json['mobilenumber'] as String?,
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'id': instance.id,
      'accessToken': instance.accessToken,
      'email': instance.email,
      'mobilenumber': instance.mobilenumber,
    };
