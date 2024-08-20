import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/features/LoginScreen/Data/model/login_request_body.dart';
import 'package:docdoc/features/LoginScreen/Data/model/login_response_body.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)

abstract class ApiService{

  factory ApiService (Dio dio,{String baseUrl}) =_ApiService;

  @POST(ApiConstants.endPointLogin)
Future<LoginResponseBody>login(
      @Body() LoginRequestBody loginRequestBody
      );

}