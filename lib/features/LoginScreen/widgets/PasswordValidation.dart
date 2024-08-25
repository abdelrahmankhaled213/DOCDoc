import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildValidationRow(text: "has at least 1 character"
            , hasValidated: context.read<LoginCubit>().isSpecialCharacter),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 number"
            , hasValidated: context.read<LoginCubit>().isNumber),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 uppercase letter"
            , hasValidated: context.read<LoginCubit>().isUpperCase),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 lowercase letter"
            , hasValidated: context.read<LoginCubit>().isLowerCase),

        verticalSpace(2),
        buildValidationRow(text: "has at least 8 characters long"
            , hasValidated: context.read<LoginCubit>().hasMinLength),
      ],
    );


  }

  Widget buildValidationRow({required String text,required bool hasValidated}) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColor.grey,
        ),
        horizontalSpace(6),
        Text(text,
          style: AppStyle.w500InterDarkBlue14.copyWith(
              fontSize: 10.sp,
              decoration: hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
              decorationThickness: 2.0,
              decorationColor: Colors.green,
              color: hasValidated ? Colors.green : AppColor.grey
          ),
        ),
      ],
    );
  }
}
