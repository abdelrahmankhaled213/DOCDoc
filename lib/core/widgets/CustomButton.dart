import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function() onpressed;
  final String text;
  const CustomButton({Key? key, required this.onpressed, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 130.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.main,
            elevation: 8.sp,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            )
          ),onPressed: onpressed, child: Text(text,style: AppStyle.w400Intergrey15.copyWith(
        color: Colors.white,
      ),
      )
      ),
    );
  }
}
