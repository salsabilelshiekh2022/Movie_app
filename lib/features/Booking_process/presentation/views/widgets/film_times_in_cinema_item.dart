import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FilmTimesInCinemaItem extends StatelessWidget {
  const FilmTimesInCinemaItem(
      {super.key, required this.time, required this.color});
  final String time;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(width: 0.5, color: AppColors.darkgrey)),
        child: Text(
          time,
          style: TextStyles.font14White500,
        ),
      ),
    );
  }
}
