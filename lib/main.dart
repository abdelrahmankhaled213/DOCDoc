import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/approuter.dart';

void main(){
  runApp(
DevicePreview(
  enabled: !kReleaseMode,
  builder: (context) => DocDoc(),
)
  );
}
class DocDoc extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "DocDoc",
          routerConfig: gorouter,

        );
      },
      designSize: Size(360, 690),

    );
  }
}
