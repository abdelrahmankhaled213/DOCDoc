import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/LoginScreen/Data/repo/login_repo.dart';
import 'package:docdoc/features/LoginScreen/logic/login_cubit.dart';
import 'package:docdoc/features/SignUp/Data/repo/signup_repo.dart';
import 'package:docdoc/features/SignUp/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;



Future<void> setupServiceLocator() async {

  // Dio & ApiService

  Dio dio=DioFactory.getDio();

   getIt .registerLazySingleton<ApiService>(() => ApiService(dio));

   //  Repos

   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));
   getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(apiService: getIt()));


   // cubit
   getIt.registerFactory(() => LoginCubit(loginRepo: getIt()));
   getIt.registerFactory(() => SignUpCubit(apiRepository: getIt()));
}