// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      message: json['message'] as String,
      tokenData: TokenData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['code'] as num).toInt(),
      statusMessage: json['status'] as bool,
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.tokenData,
      'code': instance.statusCode,
      'status': instance.statusMessage,
    };

TokenData _$TokenDataFromJson(Map<String, dynamic> json) => TokenData(
      token: json['token'] as String,
      userName: json['username'] as String,
    );

Map<String, dynamic> _$TokenDataToJson(TokenData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
