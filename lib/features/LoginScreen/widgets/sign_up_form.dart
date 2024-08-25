import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/CustomButton.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/LoginScreen/widgets/Termsandcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/widgets/my_textform.dart';

class SignUpForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Form(
        child:
        Column(
          children: [
            MyTextFormField(
              controller: BlocProvider.of<LoginCubit>(context).emailController,
                 hintText: AppText.email),

            verticalSpace(8),

            MyTextFormField(icon: Icon(Icons.remove_red_eye),controller: BlocProvider.of<LoginCubit>(context).passwordController
                , hintText: AppText.password),

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

            CustomButton(onpressed: (){}, text: AppText.login),
            verticalSpace(12),

            CustomTextSpanTermsAndCondition(text1: AppText.ByLogging, text2: AppText.termsAndConditions,text3:AppText.and ,
                text4: AppText.privacyPolicy),
            verticalSpace(12),



          ],
        )
    );
  }
}



