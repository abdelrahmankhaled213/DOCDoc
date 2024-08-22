import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NormalTextSpan extends StatelessWidget {
  final String text;
  final String text2;
  final void Function() onTap;
  NormalTextSpan({required this.text, required this.text2,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(
                  text: text+'\t',
                  style: AppStyle.w400InterGrey15.copyWith(
fontSize: 10.sp,
                  )
              ),
              TextSpan(
                  text: text2,
                  style: AppStyle.w600InterBlue16.copyWith(
                    fontSize: 10.sp,
                  ),
                recognizer: TapGestureRecognizer()..onTap = onTap
              ),
            ]
        )
    );
  }
}