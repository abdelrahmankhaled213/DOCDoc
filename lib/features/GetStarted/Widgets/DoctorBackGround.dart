import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppImage.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocImage.dart';
import 'package:docdoc/features/GetStarted/Widgets/DocText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset
            (AppImage.Docbackground,
            height: MediaQuery.of(context).size.height/2,
            color: AppColor.main.withOpacity(0.1),
            ),
        ),
        DocImage(),
        Positioned(
bottom: 20,
            left: 5,
            right: 5,

            child: DocText()
        ),
      ],
    );
  }
}