import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/LoginScreen/widgets/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    context.read<LoginCubit>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                      children: [

              Text(AppText.welcomeBack,style: AppStyle.w700InterBlue17.copyWith(
                fontSize: 24.sp
              ),

              ),

              verticalSpace(10),

              Text(AppText.loginText,style: AppStyle.w400InterGrey15.copyWith(
                fontSize: 10.sp
              )
              ),
                        verticalSpace(20),

                        SignInForm(),

                      ],
                    ),
            ),
          )
      ),
    );
  }
}

