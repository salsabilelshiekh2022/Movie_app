import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/functions/validator.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/features/Auth/presentation/view_model/sign_up/cubit/sign_up_cubit.dart';
import 'package:movie_app/features/Auth/presentation/views/sign_in_view.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/auth_button.dart';
import '../../../../../core/widgets/auth_social_button.dart';
import 'anther_auth_account.dart';
import 'no_account.dart';
import 'sign_text.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Builder(builder: (context) {
        final cubit = SignUpCubit.of(context);
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
                          keyBoardType: TextInputType.emailAddress,
                          secure: false,
                          onSave: (data) {
                            cubit.email = data;
                          },
                          focusNode: cubit.emailFocusNode,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () {
                            FocusScope.of(context)
                                .requestFocus(cubit.passwordFocusNode);
                          },
                          validator: (value) {
                            return Validator.validateEmail(value);
                          },
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          hintText: "Password",
                          onSave: (data) {
                            cubit.password = data;
                          },
                          validator: (value) {
                            return Validator.validatePassword(value);
                          },
                          keyBoardType: TextInputType.visiblePassword,
                          secure: true,
                          focusNode: cubit.passwordFocusNode,
                          textInputAction: TextInputAction.done,
                        ),
                        verticalSpace(30),
                        AuthButton(
                          title: "Create Account",
                          onTap: () {
                            cubit.signUp();
                          },
                        ),
                        verticalSpace(30),
                        const SignText(
                          title: "AuthorizedWithSocialMedia",
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
                          title: "AlreadyHaveAnAccount?",
                        ),
                        verticalSpace(12)
                      ],
                    ),
                  ),
                ),
                AnotherAuthButton(
                  title: "Login",
                  onTap: () {
                    AppRouter.navigateAndPop(const SignInView());
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
