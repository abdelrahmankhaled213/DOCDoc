import 'package:docdoc/core/constants/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyle{
static TextStyle w600black25=TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 25.sp,
  color: Colors.black
);
static TextStyle w700InterBlue17=TextStyle(
color: AppColor.main,
  fontSize: 17.sp,
  fontWeight: FontWeight.w700,
  fontFamily: 'Inter'
);

static TextStyle w400InterGrey15=TextStyle(
  color: AppColor.grey,
  fontSize: 15.sp,
  fontWeight: FontWeight.w400,
  fontFamily: 'Inter'
);

static TextStyle w500InterLighterGrey14=TextStyle(
  color: AppColor.grey,
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  fontFamily: 'Inter'
);

static TextStyle w500InterDarkBlue14=TextStyle(
    color: AppColor.grey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter'
);

static TextStyle w600InterBlue16=TextStyle(
    color: AppColor.main,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter'
);
}