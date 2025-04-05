import 'package:avvtar/repository/sign_up_api/signup_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:avvtar/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:avvtar/repository/repository.dart';
import 'package:avvtar/bloc/theme_bloc/theme_cubit.dart';
import 'package:avvtar/bloc/login_bloc/login_bloc.dart';
import 'package:avvtar/bloc/signup_bloc/signup_bloc.dart';
import 'package:avvtar/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:avvtar/bloc/reset_password_bloc/reset_password_bloc.dart';
import 'package:avvtar/bloc/phone_number_verify_bloc/phone_number_verify_bloc.dart';

GetIt getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //call servicesLocator method
  servicesLocator();
// Creating an instance of GetIt

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(loginApiRepository: getIt()),
        ),
        BlocProvider<ResetPasswordBloc>(
          create: (context) => ResetPasswordBloc(),
        ),
        BlocProvider<PhoneNumberVerifyBloc>(
          create: (context) => PhoneNumberVerifyBloc(),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(signupApiRepository: getIt()),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<DashboardBloc>(
          create: (context) => DashboardBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

// registerd all repository here
void servicesLocator() {
  getIt.registerLazySingleton<LoginApiRepository>(
    () => LoginHttpApiRepository(),
  );
  getIt.registerLazySingleton<SignupApiRepository>(
    () => SignupHttpApiRepository(),
  );
}
