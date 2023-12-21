import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class MovieCinema extends StatelessWidget {
  const MovieCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 15,
          decoration: ShapeDecoration(
            color: AppColors.lightGrey.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: const BorderSide(color: AppColors.darkgrey, width: 1),
            ),
          ),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              "76",
              style: TextStyles.font14White500.copyWith(fontSize: 10),
            ),
          ),
        ),
        horizontalSpace(3),
        Text(
          "MetaScore",
          style: TextStyles.font14DarkGrey500,
        ),
      ],
    );
  }
}
