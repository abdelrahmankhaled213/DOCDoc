import 'package:docdoc/features/GetStarted/Widgets/DocCaption.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocLogo.dart';
import 'package:docdoc/features/GetStarted/Widgets/DoctorBackGround.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GetStartedScreenView extends StatelessWidget {
  const GetStartedScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 30.h,bottom: 30.h),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: DocLogo(),
              ),
              SliverToBoxAdapter(
                child:SizedBox(
                  height: 8.h,
                ) ,
              ),
              SliverToBoxAdapter(
                child: DoctorBackGround(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 7.h,
                ) ,

              ),
              SliverToBoxAdapter(
                child: DocCaptionButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}