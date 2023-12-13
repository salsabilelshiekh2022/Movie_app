import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_text_styles.dart';
import 'package:movie_app/core/utils/spacing.dart';

import '../../../../../core/utils/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key, this.onTap, required this.icon, required this.title});
  final void Function()? onTap;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 50,
        ),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            style: BorderStyle.solid,
            color: AppColors.hotPink,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.white,
            ),
            horizontalSpace(23),
            Text(title, style: TextStyles.font17White500)
          ],
        ),
      ),
    );
  }
}
