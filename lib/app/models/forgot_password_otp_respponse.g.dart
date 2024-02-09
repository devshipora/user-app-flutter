// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_otp_respponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordOtpResponse _$ForgotPasswordOtpResponseFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordOtpResponse(
      update_token: json['update_token'] as String,
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ForgotPasswordOtpResponseToJson(
        ForgotPasswordOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'update_token': instance.update_token,
    };
