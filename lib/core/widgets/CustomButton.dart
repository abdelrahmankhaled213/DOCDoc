import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function() onpressed;
  final Color? color;
  final String text;
  final double? elevation;
  final double? radius;
  final double? paddingHeight;
  final double? paddingWidth;
  final double? height;
  final double? width;
  CustomButton({Key? key
    ,this.paddingHeight
    ,this.height
     , this.paddingWidth
     , required this.onpressed
     , this.radius
     , this.elevation
     , required this.text
     ,this.color,
      this.width
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?.h?? 50.h,
      width: width?.w??200.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: paddingHeight?.h??20.w,
                vertical: paddingWidth?.w??10.h),

            backgroundColor: color??AppColor.main,
            elevation: elevation?.sp??8.sp,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius??15.r),
            )
          ),
          onPressed: onpressed,
          child: Text(
            text,style: AppStyle.w400InterGrey15.copyWith(
        color: Colors.white,
      ),
      )
      ),
    );
  }
}
