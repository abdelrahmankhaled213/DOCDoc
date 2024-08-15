import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:docdoc/core/constants/AppImage.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImage.logo,height: 38.h,width: 38.w,),
        SizedBox(
          width: 10.w,
        ),
        Text(AppText.appName,style: AppStyle.w600black25,)
      ],
    );
  }
}