import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class MovieRating extends StatelessWidget {
  const MovieRating({super.key, required this.rating});
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "imbd",
          style: TextStyles.font14DarkGrey500,
        ),
        horizontalSpace(3),
        const Icon(
          Icons.star_rounded,
          color: AppColors.white,
          size: 10,
        ),
        Text(
          rating,
          style: TextStyles.font14White500,
        ),
        Text(
          " /10",
          style: TextStyles.font14DarkGrey500,
        ),
      ],
    );
  }
}
