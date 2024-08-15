import 'package:docdoc/features/GetStarted/View/get_started_screen.dart';
import 'package:go_router/go_router.dart';
final GoRouter gorouter=GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const GetStartedScreenView();
    },
  )
 ]
);