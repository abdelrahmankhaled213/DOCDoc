import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()

class LoginResponseBody {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  final TokenData tokenData;

  @JsonKey(name: "code")
  final int statusCode;
@JsonKey(name: "status")
  final bool statusMessage;

  LoginResponseBody({
    required this.message,
    required this.tokenData,
    required this.statusCode,
    required this.statusMessage});

factory LoginResponseBody.fromJson(Map<String,dynamic> json)
=> _$LoginResponseBodyFromJson(json);

}

@JsonSerializable()
class TokenData{
  final String token;
  @JsonKey(name: "username")
  final String userName;
  TokenData({required this.token,required this.userName});

  factory TokenData.fromJson(Map<String, dynamic> json) => _$TokenDataFromJson(json);

}