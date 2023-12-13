import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/core/utils/app_text_styles.dart';
import 'package:movie_app/core/utils/spacing.dart';
import 'package:movie_app/core/widgets/app_button.dart';
import 'package:movie_app/features/lets_sign_in/presentation/views/widgets/or_divider.dart';

import 'widgets/have_account.dart';
import 'widgets/social_button.dart';

class LetsSignIn extends StatelessWidget {
  const LetsSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 28, left: 22, right: 22, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.imagesLetsSignIn,
                width: 260,
                height: 260,
              ),
              Text(
                "PVR Cinemas",
                style: TextStyles.font32WhiteBold,
              ),
              verticalSpace(20),
              const SocialButton(
                title: 'Continue with Facebook',
                icon: Icons.facebook_rounded,
              ),
              verticalSpace(14),
              const SocialButton(
                title: 'Continue with Google',
                icon: Icons.facebook_rounded,
              ),
              verticalSpace(14),
              const SocialButton(
                title: 'Continue with Apple',
                icon: Icons.apple_rounded,
              ),
              verticalSpace(30),
              const OrDivider(),
              verticalSpace(30),
              const AppButton(title: "Sign in with password"),
              verticalSpace(20),
              const HaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
