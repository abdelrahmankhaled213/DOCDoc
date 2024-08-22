import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/routing/approuter.dart';
import 'package:docdoc/core/widgets/CustomButton.dart';
import 'package:docdoc/core/widgets/my_textform.dart';
import 'package:docdoc/features/LoginScreen/widgets/normal_text_span.dart';
import 'package:docdoc/features/SignUp/Data/model/signup_request_body.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:docdoc/features/SignUp/widgets/password_validation_signup.dart';
import 'package:docdoc/features/SignUp/widgets/signup_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 Gender groupValue = Gender.male;

class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpFormState();
  }


}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController nameController;
  late TextEditingController phoneController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = context.read<SignUpCubit>().emailController;
    passwordController = context.read<SignUpCubit>().passwordController;
    nameController = context.read<SignUpCubit>().nameController;
    phoneController = context.read<SignUpCubit>().phoneController;
    confirmPasswordController = context.read<SignUpCubit>().ConfirmPasswordController;

    passwordController.addListener(() {

      setState(() {

      });

      context.read<SignUpCubit>().isSpecialCharacter = AppRegex.hasSpecialCharacter(passwordController.text);
      context.read<SignUpCubit>().isNumber = AppRegex.hasNumber(passwordController.text);
      context.read<SignUpCubit>().isUpperCase = AppRegex.hasUpperCase(passwordController.text);
      context.read<SignUpCubit>().isLowerCase= AppRegex.hasLowerCase(passwordController.text);
      context.read<SignUpCubit>().hasMinLength
      = AppRegex.hasMinLength(passwordController.text);

       });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    confirmPasswordController.dispose();

  }

  @override
  Widget build(BuildContext context) {

    return Form(
        key: context.read<SignUpCubit>().key,
        child:
        Column(
          children: [
            MyTextFormField(controller: nameController
              , hintText: AppText.userName,validator: (p0) {

                if(p0!.isEmpty){
                  return "Please enter your userName";
                }
                return null;
              },
            ),

            verticalSpace(15),
            MyTextFormField(controller: emailController
              , hintText: AppText.email,validator: (p0) {

                if(p0!.isEmpty && !AppRegex.isEmailValid(p0)){
                  return "Please enter a valid email";
                }
                return null;
              },
            ),

            verticalSpace(15),

            MyTextFormField(

                validator: (p0) {
                  if(p0!.isEmpty|| !AppRegex.isPhoneNumberValid(p0)){
                    return "Please enter a valid phone number";
                  }

                  return null;
                },controller: phoneController
                , hintText: AppText.phone),

            verticalSpace(15),

            RadioListTile(
              value:
              Gender.male , groupValue: groupValue, onChanged: (p0) {

              setState(() {
                groupValue = p0!;
              });
            },
              fillColor: MaterialStateProperty.all(AppColor.main),
              title: Text(AppText.male,style: AppStyle.w400InterGrey15),

            ),

            verticalSpace(15),
            RadioListTile(
              value:
              Gender.female , groupValue:groupValue , onChanged: (p0) {

              setState(() {
                groupValue = p0!;
              });

            }
              , fillColor: MaterialStateProperty.all(AppColor.main),
              title: Text(AppText.female,style: AppStyle.w400InterGrey15),
            ),
            verticalSpace(15),
            MyTextFormField
              (
                obscureText: context.read<SignUpCubit>().isObscure,validator: (p0) {
              if(p0!.isEmpty|| !AppRegex.isPasswordValid(p0)){
                return "Please enter a valid password";
              }

              return null;
            },icon:  IconButton(icon: context.read<SignUpCubit>().isObscure
                ?Icon(Icons.visibility,size: 12.sp,)
                : Icon(Icons.visibility_off,size: 12.sp,), onPressed: () {
              context.read<SignUpCubit>().changeEyeIcon();

              setState(() {

              });
            },),controller: passwordController
                , hintText: AppText.password),

            verticalSpace(15),

            MyTextFormField(
                obscureText: SignUpCubit.get(context).isObscure2
                ,validator: (p0) {
              if(p0!.isEmpty|| !AppRegex.isPasswordValid(p0)){
                return "Please enter a valid password";
              }

              return null;
            },
                icon:  IconButton(icon: context.read<SignUpCubit>().isObscure2
                    ?Icon(Icons.visibility,size: 12.sp,)
                    : Icon(Icons.visibility_off,size: 12.sp,), onPressed: () {

                  SignUpCubit.get(context).changeEyeIcon2();
                  setState(() {

                  });
                },
                )
                ,controller: confirmPasswordController
                , hintText: AppText.confirmPassword),

            verticalSpace(10),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:  PasswordValidationSignUp(),
            ),

            verticalSpace(8),



            CustomButton(onpressed: (){
if(SignUpCubit.get(context).passwordController.text
    !=SignUpCubit.get(context).ConfirmPasswordController.text ){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Confirm password not match"
        ,style: AppStyle.w500InterDarkBlue14.copyWith(
      color: Colors.white
    ),
    )
        ,duration: const Duration(seconds: 2),backgroundColor: AppColor.main,),
  );
  return;
}
              validateThenLogin(context);

            },
                text: AppText.signup),

            verticalSpace(12),

NormalTextSpan(
    text: AppText.AlreadyHaveAccount, text2: AppText.login, onTap: (){
  pushToScreen(context: context, path: AppRoute.login);
}),

            const SignUpBlocListener(),

          ],
        )
    );
  }
}


validateThenLogin(BuildContext context){
  if(context.read<SignUpCubit>().key.currentState!.validate()){
    context.read<SignUpCubit>().signUp(
        SignUpRequestBody(
        confirmPassword:SignUpCubit.get(context).ConfirmPasswordController.text
        , name: SignUpCubit.get(context).nameController.text
        , email: SignUpCubit.get(context).emailController.text
        , password: SignUpCubit.get(context).passwordController.text
        , phone: SignUpCubit.get(context).phoneController.text
        , gender: groupValue==Gender.male? "0":"1"));
  }
}
enum Gender {
  male,
  female
}


