import 'package:docdoc/core/constants/AppText.dart';
import 'package:docdoc/features/GetStarted/View/get_started_screen.dart';
import 'package:docdoc/features/LoginScreen/Ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
final GoRouter goRouter=
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
    return LoginScreenView ();
  },)
 ]
);

pushToScreen({required BuildContext context,required String path,Object? extra}) {
  {
    GoRouter.of(context).push(path, extra: extra);
  }
}
pushAndRemoveUntilScreen
    ({required BuildContext context,required String path,Object? extra}){
  GoRouter.of(context).pushReplacement(path,extra: extra);
}