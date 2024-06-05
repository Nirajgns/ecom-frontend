import 'dart:developer';

import 'package:ecom_app/core/routes.dart';
import 'package:ecom_app/core/ui.dart';
import 'package:ecom_app/logic/cubits/caregory_cubit/category_cubit.dart';
import 'package:ecom_app/logic/cubits/user_cubit/user_cubit.dart';
import 'package:ecom_app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const EcomerceApp());
}

class EcomerceApp extends StatelessWidget {
  const EcomerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit()),
        BlocProvider(create: (context) => CategoryCubit())
      ],
      child: MaterialApp(
        theme: Themes.defaultTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    log("created bloc: $bloc");
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    log("Change in $bloc: $change");
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log("ChangeIn $bloc: $transition");
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    log("Closed $bloc");
    super.onClose(bloc);
  }
}
