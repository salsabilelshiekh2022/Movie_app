import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/router/app_router.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../Auth/presentation/views/widgets/anther_auth_account.dart';
import '../../../../order_tickets/presentation/views/order_tickets_view.dart';

class TicketDetailsBody extends StatelessWidget {
  const TicketDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            height: 530,
            decoration: BoxDecoration(
                color: const Color(0xff283447),
                borderRadius: BorderRadius.circular(12)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              const Text(
                "--------------------------------------",
                style: TextStyle(color: AppColors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
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
                height: 10,
              ),
              Center(
                child: Image.network(
                  "https://i.pinimg.com/564x/d8/11/10/d81110f74b45542aa26eddc290592ed8.jpg",
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: "Order", style: TextStyles.font14White500),
                TextSpan(
                    text: " #1771054903",
                    style: TextStyles.font14White500
                        .copyWith(color: AppColors.lightPurple)),
              ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "VISA",
                        style:
                            TextStyles.font14White500.copyWith(fontSize: 16)),
                    TextSpan(
                        text: "    •••• •••• ••••   4567",
                        style: TextStyles.font12LightGrey400
                            .copyWith(fontSize: 16)),
                  ])),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Payed: ",
                        style: TextStyles.font12LightGrey400
                            .copyWith(fontSize: 14)),
                    TextSpan(text: "\$21.00", style: TextStyles.font14White500),
                  ]))
                ],
              )
            ]),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnotherAuthButton(
            title: "Comfirm & Checkout",
            onTap: () {
              AppRouter.navigateTo(const OrderTicketsView());
            },
          ),
        )
      ],
    );
  }
}
