import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_drop_down.dart';

class MovieBookingTime extends StatelessWidget {
  const MovieBookingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomDropDown(),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.info_rounded,
                  color: AppColors.lightGrey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Movie Details",
                  style: TextStyles.font14White500,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
