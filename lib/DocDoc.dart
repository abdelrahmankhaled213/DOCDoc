import 'package:docdoc/core/constants/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/approuter.dart';

class DocDoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp.router(
          theme: ThemeData(
            primaryColor: AppColor.main,
          ),
          debugShowCheckedModeBanner: false,
          title: "DocDoc",
          routerConfig: goRouter,

        );
      },
      designSize: const Size(375, 812),

    );
  }
}