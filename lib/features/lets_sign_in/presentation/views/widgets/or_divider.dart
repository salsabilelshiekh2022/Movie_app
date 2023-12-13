import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/spacing.dart';

import '../../../../../core/utils/app_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1,
          width: 141,
          color: AppColors.hotPink,
        ),
        horizontalSpace(8),
        const Text(
          "OR",
          style: TextStyle(color: AppColors.hotPink),
        ),
        horizontalSpace(8),
        Container(
          height: 1,
          width: 141,
          color: AppColors.hotPink,
        ),
      ],
    );
  }
}
