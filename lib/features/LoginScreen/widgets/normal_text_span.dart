import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:flutter/material.dart';

class NormalTextSpan extends StatelessWidget {
  final String text;
  final String text2;
  NormalTextSpan({required this.text, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(
                  text: text+'\t',
                  style: AppStyle.w400InterGrey15
              ),
              TextSpan(
                  text: text2,
                  style: AppStyle.w600InterBlue16
              ),
            ]
        )
    );
  }
}