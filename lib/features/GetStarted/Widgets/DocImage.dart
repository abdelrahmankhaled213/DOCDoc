import 'package:docdoc/core/constants/AppImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocImage extends StatelessWidget {
  const DocImage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.14
              ,0.4
            ]
        ),
      ),
      child: Center(
        child: Image.asset(
            AppImage.Doc,
          height: MediaQuery.of(context).size.height/1.5,
        ),
      ),
    );
  }
}