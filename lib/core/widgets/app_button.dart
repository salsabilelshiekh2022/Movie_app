import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              AppColors.purple,
              AppColors.hotPink,
              //AppColors.lightPurple,
            ]),
            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.white.withOpacity(.89),
            ),
          ),
        ),
      ),
    );
  }
}
