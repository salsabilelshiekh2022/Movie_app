import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AnotherAuthButton extends StatelessWidget {
  const AnotherAuthButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 375,
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
