import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OrderTicketItem extends StatelessWidget {
  const OrderTicketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xff28354c),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Avengers: Endgame",
                style: TextStyles.font20White500,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "17/07/2020",
                    style: TextStyles.font12LightGrey400,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "20:20",
                    style: TextStyles.font14White500
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Green Hall",
                    style: TextStyles.font12LightGrey400
                        .copyWith(color: AppColors.lightPurple),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    AppAssets.imagesGlassesIcon,
                    width: 14,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  SvgPicture.asset(
                    AppAssets.imagesSeat,
                    width: 12,
                    height: 12,
                    colorFilter: const ColorFilter.mode(
                        AppColors.lightPurple, BlendMode.srcIn),
                  ),
                  SvgPicture.asset(
                    AppAssets.imagesSeat,
                    width: 12,
                    height: 12,
                    colorFilter: const ColorFilter.mode(
                        AppColors.lightPurple, BlendMode.srcIn),
                  )
                ],
              ),
              const SizedBox(height: 3),
              Text("RainStar Movie Theater",
                  style: TextStyles.font12LightGrey400),
              Row(
                children: [
                  Text("212 Oak valley ,St Dickson, TN 32055",
                      style: TextStyles.font12LightGrey400),
                  const SizedBox(width: 55),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                        width: 1,
                        color: AppColors.white,
                      ),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "2",
                      style: TextStyles.font12DarkGrey400
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Tickets",
                    style: TextStyles.font14White500.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
