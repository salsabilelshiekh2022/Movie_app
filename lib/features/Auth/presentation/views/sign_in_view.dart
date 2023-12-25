import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_colors.dart';

import 'widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: SignInBody(),
    );
  }
}
