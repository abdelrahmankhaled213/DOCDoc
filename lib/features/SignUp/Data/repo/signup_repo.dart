import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/SignUp/Data/model/signup_request_body.dart';
import 'package:docdoc/features/SignUp/Data/model/signup_response.dart';

import '../../../../core/networking/api_result.dart';

class SignUpRepo {
  final ApiService apiService;
  SignUpRepo({required this.apiService});
  Future<ApiResult<SignupResponse>> signUp (SignUpRequestBody signUpRequestBody)async{
    try {
      final response = await apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(error: ErrorHandler.handle(e));
    }

  }
}