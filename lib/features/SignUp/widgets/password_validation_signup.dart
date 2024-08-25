import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationSignUp extends StatelessWidget {
  const PasswordValidationSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildValidationRow(text: "has at least 1 character"
            , hasValidated: context.read<SignUpCubit>().isSpecialCharacter),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 number"
            , hasValidated:  context.read<SignUpCubit>().isNumber),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 uppercase letter"
            , hasValidated:  context.read<SignUpCubit>().isUpperCase),

        verticalSpace(2),

        buildValidationRow(text: "has at least 1 lowercase letter"
            , hasValidated: context.read<SignUpCubit>().isLowerCase),

        verticalSpace(2),
        buildValidationRow(text: "has at least 8 characters long"
            , hasValidated: context.read<SignUpCubit>().hasMinLength),
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