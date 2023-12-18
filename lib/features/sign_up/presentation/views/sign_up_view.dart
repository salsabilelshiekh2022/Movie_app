import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/core/utils/spacing.dart';

import 'widgets/app_back_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBackButton(),
              verticalSpace(20),
              Center(
                child: Image.asset(
                  AppAssets.imagesLogoWithoutBackground,
                  width: 220,
                  height: 190,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
