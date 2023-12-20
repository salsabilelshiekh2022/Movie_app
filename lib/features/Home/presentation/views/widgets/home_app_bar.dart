import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_rounded,
              color: AppColors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "Search",
                  style: TextStyles.font14DarkGrey500,
                ),
                const Icon(
                  Icons.search_rounded,
                  color: AppColors.darkgrey,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(AppAssets.imagesBars),
          )
        ],
      ),
    );
  }
}
