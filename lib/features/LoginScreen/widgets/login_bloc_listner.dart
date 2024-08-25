import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/routing/approuter.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/LoginScreen/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
      current is Loading ||
          current is Success
          || current is Error,

      listener:  (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(context: context, builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColor.main,
              ),),);
          },

          failure: (error) {
            setErrorState(context, error);
          },
          success: (loginResponse) {
            context.pop();

            pushAndRemoveUntilScreen(context: context, path: AppRoute.home
            );
          },
        );
    },
    child: const SizedBox.shrink(),);
  }

  void setErrorState(BuildContext context, String error) {
      context.pop();
    showDialog(context: context
      , builder: (context) => SizedBox(
        height: 100.h,
        width: 100.w,
        child: AlertDialog(

          icon:  Icon(Icons.error,color: Colors.red,size: 14.sp,),
          content:
          Text(
              error,style: AppStyle.w500InterDarkBlue14.copyWith(
            color: Colors.red,

          )
          ),
          actions: [
            TextButton(
                child: Text(AppText.ok,style: AppStyle.w400InterGrey15.
                copyWith(color: Colors.red),),
                onPressed: (){
                  context.pop();
            })
          ],
        ),
      ),
    );
  }
}
