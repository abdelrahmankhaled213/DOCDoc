import 'package:docdoc/core/constants/AppColor.dart';
import 'package:docdoc/core/constants/AppStyle.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/core/routing/approuter.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
      current is SignUpLoading ||
          current is SignUpLoaded
          || current is SignUpError,

      listener:  (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(context: context, builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColor.main,
              ),
            )
              ,
            );
          },

          error: (error) {
            setErrorState(context, error);
          },
          loaded: (SignUpResponse) {
            context.pop();


            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppText.account
                  ,style: AppStyle.w500InterDarkBlue14.copyWith(
                      color: Colors.white
                  ),
                )
                ,duration: const Duration(seconds: 2),backgroundColor: AppColor.main,),
            );



            pushToScreen(context: context, path: AppRoute.login
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
