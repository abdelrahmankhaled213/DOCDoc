import 'package:docdoc/features/SignUp/Data/model/signup_request_body.dart';
import 'package:docdoc/features/SignUp/Data/repo/signup_repo.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo apiRepository;
  SignUpCubit({
    required this.apiRepository,
}) : super(const SignUpState.initial());

static SignUpCubit get(BuildContext context) => BlocProvider.of(context);

  final GlobalKey<FormState> key = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final ConfirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  bool isObscure=true;
  bool isObscure2=true;

  bool hasMinLength=false;
  bool isUpperCase=false ;
  bool isLowerCase=false ;
  bool isNumber =false;
  bool isSpecialCharacter=false ;


  Future<void> signUp(SignUpRequestBody signUpRequestBody) async {

    emit(const SignUpState.loading());
    final response = await apiRepository.signUp(signUpRequestBody);
    response.when(
      success: (data) => emit(SignUpState.loaded(data)),
      failure: (message) => emit(SignUpState.error(message.apiErrorModel.message!)),
    );
  }

  changeEyeIcon(){
    isObscure=!isObscure;
  }
  changeEyeIcon2(){
    isObscure2=!isObscure2;
  }
}
