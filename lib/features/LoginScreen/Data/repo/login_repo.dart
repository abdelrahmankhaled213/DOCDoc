import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/LoginScreen/Data/model/login_request_body.dart';
import 'package:docdoc/features/LoginScreen/Data/model/login_response_body.dart';

class LoginRepo{

  final ApiService apiService;
  LoginRepo( {required this.apiService});

  Future<ApiResult<LoginResponseBody>> login (LoginRequestBody loginRequestBody)async{
    try{
     final response= await apiService.login(loginRequestBody);
     return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(error: ErrorHandler.handle(e));
    }
  }


}