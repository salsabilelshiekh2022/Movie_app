import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class NewMovieItem extends StatelessWidget {
  const NewMovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
            width: 220,
            height: 280,
            fit: BoxFit.fill,
          ),
        ),
        verticalSpace(8),
        Text(
          "Onwerd",
          style: TextStyles.font17White500,
        ),
        Row(
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
              "7.6",
              style: TextStyles.font14White500,
            ),
            Text(
              " /10",
              style: TextStyles.font14DarkGrey500,
            ),
            horizontalSpace(8),
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
                  style: TextStyles.font14DarkGrey500.copyWith(fontSize: 10),
                ),
              ),
            ),
            horizontalSpace(3),
            Text(
              "MetaScore",
              style: TextStyles.font14DarkGrey500,
            ),
          ],
        ),
        verticalSpace(3),
        Row(
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
        )
      ],
    );
  }
}
