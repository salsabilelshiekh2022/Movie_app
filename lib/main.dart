import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MovieTime());
}

class MovieTime extends StatelessWidget {
  const MovieTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Time ',
      theme: ThemeData(),
      onGenerateRoute: onGenerate,
      home: const SplashView(),
    );
  }
}
