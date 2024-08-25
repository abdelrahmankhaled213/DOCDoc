import 'package:docdoc/core/Di/dependency%20injection.dart';
import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/features/GetStarted/View/get_started_screen.dart';
import 'package:docdoc/features/HomeScreen/Ui/homescreenview.dart';
import 'package:docdoc/features/LoginScreen/Ui/login_screen.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/SignUp/Ui/sign_up_screen.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter =
GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const GetStartedScreenView();
        },
      ),
      GoRoute(path: AppRoute.login,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreenView(),
          );
        },),

      GoRoute(
        path: AppRoute.register,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: SignUpScreen(),
          );
        },),

      GoRoute(
        path: AppRoute.home,
        builder: (context, state) {
          return HomeScreenView();
        },),


    ]
);

pushToScreen(
    {required BuildContext context, required String path, Object? extra}) {
  {
    GoRouter.of(context).push(path, extra: extra);
  }
}

pushAndRemoveUntilScreen
    ({required BuildContext context, required String path, Object? extra}) {
  GoRouter.of(context).pushReplacement(path, extra: extra);
}