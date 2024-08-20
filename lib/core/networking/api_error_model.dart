import 'package:docdoc/core/networking/api_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {

  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
     this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return _$ApiErrorModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$ApiErrorModelToJson(this);
  }
}