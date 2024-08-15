import 'package:docdoc/core/constants/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyle{
static  TextStyle w600black25=TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 25.sp,
  color: Colors.black
);
static  TextStyle w700Interbluebold17=TextStyle(
color: AppColor.main,
  fontSize: 17.sp,
  fontWeight: FontWeight.w700,
  fontFamily: 'Inter'
);
static TextStyle w400Intergrey15=TextStyle(
  color: AppColor.grey,
  fontSize: 15.sp,
  fontWeight: FontWeight.w400,
  fontFamily: 'Inter'
);
}