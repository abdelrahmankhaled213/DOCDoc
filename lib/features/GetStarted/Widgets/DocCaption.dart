import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocCaptionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:6.w),
      child: Column(
        children: [
          Text(AppText.caption,
            style: AppStyle.w400Intergrey15,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h,),

          Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: CustomButton(text: AppText.getStarted, onpressed: (){}),
          ),

        ],
      ),
    );
  }
}