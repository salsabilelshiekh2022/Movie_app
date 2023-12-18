import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Container(
        width: 40,
        height: 40,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.3),
          shape: const OvalBorder(
            side: BorderSide(width: 2, color: AppColors.hotPink),
          ),
        ),
        child: const Icon(
          Icons.arrow_back_rounded,
          color: AppColors.white,
          size: 18,
        ),
      ),
    );
  }
}
