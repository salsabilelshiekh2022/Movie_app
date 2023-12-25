import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: SignUpBody(),
    );
  }
}
