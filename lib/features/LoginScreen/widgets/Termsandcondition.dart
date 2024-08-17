import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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