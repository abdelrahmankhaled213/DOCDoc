import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppImage.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocCaption.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocImage.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DoctorBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset
            (AppImage.Docbackground,
            height: 300.h,
            color: AppColor.main.withOpacity(0.1),
            ),
        ),
        DocImage(),
        Positioned(
            bottom: 30.h,
            left: 0,
            right: 0,
            child: DocText()
        ),
      ],
    );
  }
}