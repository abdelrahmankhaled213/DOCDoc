import 'package:docdoc/features/LoginScreen/Data/model/login_request_body.dart';
import 'package:docdoc/features/LoginScreen/Data/repo/login_repo.dart';
import 'package:docdoc/features/LoginScreen/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit({required this.loginRepo}) : super(const LoginState.initial());
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure=true;

   bool hasMinLength=false;
   bool isUpperCase=false ;
   bool isLowerCase=false ;
   bool isNumber =false;
   bool isSpecialCharacter=false ;

  void emitLoginStates(LoginRequestBody loginRequestBody)async{
    emit(const LoginState.loading());

      final response=await loginRepo.login(loginRequestBody);

      response.when(success: (success) {
        emit(LoginState.success(success));
      }, failure: (failure){
         emit(LoginState.failure(error: failure.apiErrorModel.message!));
      });

  }
  changeEyeIcon(){
    isObscure=!isObscure;
  }
}
