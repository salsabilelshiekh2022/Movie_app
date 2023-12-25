import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/functions/validator.dart';
import 'package:movie_app/features/Auth/presentation/view_model/sign_in/sign_in_cubit.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/auth_button.dart';
import '../../../../../core/widgets/auth_social_button.dart';
import '../sign_up_view.dart';
import 'anther_auth_account.dart';
import 'no_account.dart';
import 'sign_text.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Builder(builder: (context) {
        final cubit = SignInCubit.of(context);
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Form(
                    key: cubit.formKey,
                    autovalidateMode: cubit.autovalidateMode,
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
                        AppTextFormField(
                          hintText: "Email",
                          focusNode: cubit.emailFocusNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.passwordFocusNode);
                          },
                          keyBoardType: TextInputType.emailAddress,
                          onSave: (data) {
                            cubit.email = data;
                          },
                          validator: (value) {
                            return Validator.validateEmail(value);
                          },
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          hintText: "Password",
                          keyBoardType: TextInputType.visiblePassword,
                          secure: true,
                          onSave: (data) {
                            cubit.password = data;
                          },
                          focusNode: cubit.passwordFocusNode,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            return Validator.validatePassword(value);
                          },
                        ),
                        verticalSpace(30),
                        AuthButton(
                          title: "Login",
                          onTap: () {
                            cubit.signIn();
                          },
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
        );
      }),
    );
  }
}
