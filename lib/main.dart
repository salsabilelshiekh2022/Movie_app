import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/features/splash/presentation/views/splash_view.dart';

import 'core/services/service_locator.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_constants.dart';

void main() {
  setupServiceLocator();
  runApp(const MovieTime());
}

class MovieTime extends StatelessWidget {
  const MovieTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.black,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white)),
        scaffoldBackgroundColor: Colors.white,

        fontFamily: "Baloo 2",
        // appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Movie Time ',
      onGenerateRoute: onGenerate,
      home: const SplashView(),
    );
  }
}
