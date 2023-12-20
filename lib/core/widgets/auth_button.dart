import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: AppColors.lightPurple),
          ),
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyles.font28White500,
          ),
        ),
      ),
    );
  }
}
