import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/core/utils/spacing.dart';
import 'package:movie_app/features/Auth/presentation/views/sign_up_view.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/auth_button.dart';
import '../../../../core/widgets/auth_social_button.dart';
import 'widgets/anther_auth_account.dart';
import 'widgets/no_account.dart';
import 'widgets/sign_text.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    verticalSpace(20),
                    Image.asset(
                      AppAssets.imagesLogoWithoutBackground,
                      width: 220,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                    const AppTextFormField(
                      hintText: "Email",
                    ),
                    verticalSpace(20),
                    const AppTextFormField(
                      hintText: "Password",
                    ),
                    verticalSpace(30),
                    AuthButton(
                      title: "Login",
                      onTap: () {},
                    ),
                    verticalSpace(30),
                    const SignText(
                      title: "Sign in with",
                    ),
                    verticalSpace(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AuthSocialButton(
                          image: AppAssets.imagesFacebook,
                        ),
                        horizontalSpace(
                          20,
                        ),
                        const AuthSocialButton(
                          image: AppAssets.imagesGoogle,
                        ),
                      ],
                    ),
                    verticalSpace(50),
                    const NoAccount(
                      title: "NoAccount?",
                    ),
                    verticalSpace(12)
                  ],
                ),
              ),
              AnotherAuthButton(
                title: "Create Account",
                onTap: () {
                  AppRouter.navigateTo(
                    const SignUpView(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}