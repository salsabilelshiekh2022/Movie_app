import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OrderInfoBox extends StatelessWidget {
  const OrderInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 336,
      decoration: BoxDecoration(
          color: const Color(0xff283447),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    AppAssets.imagesLogoWithoutBackground,
                    width: 60,
                    height: 60,
                  ),
                ),
                Text(
                  "Movie Title",
                  style: TextStyles.font12DarkGrey400,
                ),
                Text(
                  "Avengers: Endgame",
                  style: TextStyles.font20White500,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("RainStar Movie Theater",
                    style: TextStyles.font12LightGrey400),
                Text("212 Oak valley ,St Dickson, TN 32055",
                    style: TextStyles.font12LightGrey400),
                const SizedBox(
                  height: 10,
                ),
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
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
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
                      width: 8,
                    ),
                    Text(
                      "Tickets",
                      style: TextStyles.font14White500,
                    ),
                    const SizedBox(
                      width: 8,
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
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            height: 91,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xff374360),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total payment ",
                  style: TextStyles.font14White500
                      .copyWith(color: AppColors.lightGrey),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Discount",
                          style: TextStyles.font14DarkGrey500),
                      TextSpan(
                          text: " -\$3.00",
                          style: TextStyles.font14DarkGrey500
                              .copyWith(color: AppColors.lightPurple))
                    ])),
                    Text(
                      "\$21.00",
                      style: TextStyles.font28White500,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
