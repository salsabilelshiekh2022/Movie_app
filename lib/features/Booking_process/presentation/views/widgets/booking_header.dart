import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class BookingHeader extends StatelessWidget {
  const BookingHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyles.font20White500,
              ),
              const Icon(
                Icons.double_arrow_rounded,
                color: AppColors.white,
                size: 12,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "92 Tadcaster Rd, PA20 2QS",
            style: TextStyles.font12DarkGrey400,
          )
        ],
      ),
    );
  }
}
