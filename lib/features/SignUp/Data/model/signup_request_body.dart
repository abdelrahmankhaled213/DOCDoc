import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String gender;
  @JsonKey(name: "password_confirmation")
  final  String confirmPassword;
  final String phone;

  SignUpRequestBody( {
    required this.confirmPassword,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}