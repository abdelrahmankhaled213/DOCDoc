import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:docdoc/features/SignUp/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
context.read<SignUpCubit>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Text(AppText.createAccount,style: AppStyle.w700InterBlue17.copyWith(
                      fontSize: 24.sp
                  ),

                  ),

                  verticalSpace(10),

                  Text(AppText.loginText,style: AppStyle.w400InterGrey15.copyWith(
                      fontSize: 10.sp
                  )
                  ),
                  verticalSpace(20),
                 SignUpForm(),

                ],
              ),
            ),
          )
      ),
    );
  }
}
