import 'package:flutter/material.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/core/utils/app_assets.dart';
import 'package:movie_app/core/utils/app_text_styles.dart';
import 'package:movie_app/core/utils/spacing.dart';
import 'package:movie_app/features/lets_sign_in/presentation/views/lets_sign_in.dart';

import '../../../../core/widgets/app_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.imagesWelcomeMovies,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 450,
            left: 33,
            right: 33,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Welcome to PVR\n Cinemas",
                  style: TextStyles.font32WhiteBold,
                ),
                verticalSpace(15),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      textAlign: TextAlign.center,
                      "The best movie ticket booking app\n of the century to make your days\n great!",
                      style: TextStyles.font20White500),
                ),
                verticalSpace(22),
                AppButton(
                  title: "Get Started",
                  onTap: () {
                    AppRouter.navigateAndPop(const LetsSignIn());
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
