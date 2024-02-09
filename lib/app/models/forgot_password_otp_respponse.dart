// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:shipora_1/app/models/base_response.dart';

part 'forgot_password_otp_respponse.g.dart';

@JsonSerializable()
class ForgotPasswordOtpResponse extends BaseResponse {
  String update_token;
  ForgotPasswordOtpResponse({
    required this.update_token, required super.status, required super.message,
  });

  @override
  factory ForgotPasswordOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordOtpResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ForgotPasswordOtpResponseToJson(this);
}
