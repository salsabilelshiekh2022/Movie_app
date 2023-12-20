import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class MovieTimeWidget extends StatelessWidget {
  const MovieTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time_filled_rounded,
          color: AppColors.darkgrey,
          size: 16,
        ),
        horizontalSpace(3),
        Text(
          "125 min",
          style: TextStyles.font12DarkGrey400,
        )
      ],
    );
  }
}
