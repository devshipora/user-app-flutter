// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:shipora_1/app/models/base_response.dart';

part "login_response.g.dart";

@JsonSerializable()
class LoginResponse extends BaseResponse {
  int? id;
  String? accessToken;
  String? email;
  String? mobilenumber;
  LoginResponse({
    required this.id,
    required this.accessToken,
    required this.email,
    required this.mobilenumber,
    required super.status,
    required super.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
