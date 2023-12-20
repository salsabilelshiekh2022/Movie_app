import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AnotherAuthButton extends StatelessWidget {
  const AnotherAuthButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.purple,
            AppColors.hotPink,
            AppColors.lightPurple
            //AppColors.lightPurple,
          ]),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyles.font20White500,
          ),
        ),
      ),
    );
  }
}
