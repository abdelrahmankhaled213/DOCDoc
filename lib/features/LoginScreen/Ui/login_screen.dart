import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/LoginScreen/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
            child: ListView(
                    children: [

            Text(AppText.welcomeBack,style: AppStyle.w700InterBlue17.copyWith(
              fontSize: 24.sp
            ),),

verticalSpace(10),

            Text(AppText.loginText,style: AppStyle.w400InterGrey15.copyWith(
              fontSize: 10.sp
            )
            ),
                      verticalSpace(20),
                      SignUpForm(),

                    ],
                  ),
          )
      ),
    );
  }
}

