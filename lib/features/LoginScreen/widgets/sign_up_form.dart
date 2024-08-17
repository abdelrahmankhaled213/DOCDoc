import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/my_textform.dart';
class SignUpForm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Form(
        child:
        Column(
          children: [
            MyTextFormField(onChanged: (value){}
                , hintText: AppText.email),

            verticalSpace(8),

            MyTextFormField(icon: Icon(Icons.remove_red_eye),onChanged: (value){}
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
            NormalTextSpan (text: AppText.AlreadyHaveAccount, text2: AppText.signup)


          ],
        )
    );
  }
}

class NormalTextSpan extends StatelessWidget {
  final String text;
  final String text2;
NormalTextSpan({required this.text, required this.text2});
  @override
  Widget build(BuildContext context) {
return Text.rich(
  TextSpan(
    children: [
      TextSpan(
        text: text+'\t',
        style: AppStyle.w400InterGrey15
      ),
      TextSpan(
        text: text2,
        style: AppStyle.w600InterBlue16
      ),
    ]
  )
);
  }
}
class CustomTextSpanTermsAndCondition extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final TextStyle? style1;
  final TextStyle? style2;


  CustomTextSpanTermsAndCondition({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.style1,
    this.style2,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(

            children: [
              TextSpan(
                  text: text1+"\t",
                  style: style1 ?? AppStyle.w400InterGrey15.copyWith(
                      fontSize: 11.sp
                  )
              ),
              TextSpan(
                  text: text2+"\t",
                  style: style2 ?? AppStyle.w600black25.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400
                  ),

              ),
              TextSpan(
                  text: text3 +"\t" ,
                  style: AppStyle.w400InterGrey15.copyWith(
                      fontSize: 11.sp
                  )),
              TextSpan(
                text: text4 +"\t" ,
                style: AppStyle.w600black25.copyWith(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400
                ),

              ),
            ]
        )
    );
  }
}
