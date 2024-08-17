import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatelessWidget {
final EdgeInsetsGeometry? contentPadding;
final void Function(String) onChanged;
final InputBorder? enabledBorder;
final InputBorder?focusedBorder;
final  TextStyle? hintStyle;
final bool? obscureText;
final String hintText;
final Widget? icon;
final Color? backGroundColor;

MyTextFormField({
  this.backGroundColor,
  required this.onChanged,
  required this.hintText,
  this.icon
  ,this.contentPadding,
  this.enabledBorder,
  this.focusedBorder,
  this.obscureText,
  this.hintStyle
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged:onChanged ,

      decoration: InputDecoration(
        isDense: true,
        filled: backGroundColor == null ? false : true,
        fillColor: backGroundColor,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(
            horizontal: 20.w,vertical: 10.h),
        enabledBorder: enabledBorder??
         OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.lightGrey
          ),
          borderRadius: BorderRadius.circular(16)
        ),
        focusedBorder: focusedBorder ??OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColor.main,
              width: 1.3,

          ),
            borderRadius: BorderRadius.circular(16),
        ),
hintStyle: AppStyle.w500InterLighterGrey14,
        hintMaxLines: 1,
        hintText: hintText,
suffixIcon: icon
      ),

obscureText: obscureText ?? false,
      style: AppStyle.w500InterDarkBlue14,
    );
  }

}
