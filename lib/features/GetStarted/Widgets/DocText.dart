import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocText extends StatelessWidget {
  const DocText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w),
      child: Text(AppText.overView,
        style: AppStyle.w700InterBlue17.copyWith(
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}