import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/CustomButton.dart';
import 'package:docdoc/features/LoginScreen/Data/model/login_request_body.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/LoginScreen/widgets/PasswordValidation.dart';
import 'package:docdoc/features/LoginScreen/widgets/Termsandcondition.dart';
import 'package:docdoc/features/LoginScreen/widgets/login_bloc_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/my_textform.dart';

class SignInForm extends StatefulWidget {

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
    passwordController.addListener(() {
setState(() {

});
context.read<LoginCubit>().isSpecialCharacter= AppRegex.hasSpecialCharacter(passwordController.text);
context.read<LoginCubit>().isNumber= AppRegex.hasNumber(passwordController.text);
context.read<LoginCubit>().isUpperCase= AppRegex.hasUpperCase(passwordController.text);
context.read<LoginCubit>().isLowerCase= AppRegex.hasLowerCase(passwordController.text);
context.read<LoginCubit>().hasMinLength= AppRegex.hasMinLength(passwordController.text);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
        child:
        Column(
          children: [
            MyTextFormField(controller: emailController
                , hintText: AppText.email,validator: (p0) {

                  if(p0!.isEmpty|| !AppRegex.isEmailValid(p0)){
                    return "Please enter a valid email";
                  }
                  return null;
                },
            ),

            verticalSpace(15),

            MyTextFormField(
                obscureText: context.read<LoginCubit>().isObscure,validator: (p0) {
              if(p0!.isEmpty|| !AppRegex.isPasswordValid(p0)){
                return "Please enter a valid password";
              }

              return null;
            },icon:  IconButton(icon: context.read<LoginCubit>().isObscure
                ?Icon(Icons.visibility,size: 12.sp,)
                : Icon(Icons.visibility_off,size: 12.sp,), onPressed: () {
              context.read<LoginCubit>().changeEyeIcon();
              setState(() {

              });
            },),controller: passwordController
                , hintText: AppText.password),

            verticalSpace(8),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: PasswordValidation(),
            ),

            verticalSpace(8),
            Align(
              alignment: Alignment.centerRight,

              child: Text("ForgotPassword ?",style: AppStyle.w400InterGrey15.copyWith(
                color: AppColor.main,
                fontSize: 18,
              )
              ),
            ),
            verticalSpace(8),

            CustomButton(onpressed: (){

              validateThenLogin(context);

            }, text: AppText.login),
            verticalSpace(12),

            CustomTextSpanTermsAndCondition(text1: AppText.ByLogging, text2: AppText.termsAndConditions,text3:AppText.and ,
                text4: AppText.privacyPolicy),

            verticalSpace(12),

 const LoginBlocListener(),

          ],
        )
    );
  }
}


validateThenLogin(BuildContext context){
 if(context.read<LoginCubit>().formKey.currentState!.validate()){
  context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
      email:  context.read<LoginCubit>().emailController.text
      , password: context.read<LoginCubit>(). passwordController.text));
 }
}

