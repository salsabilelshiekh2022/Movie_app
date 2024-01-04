import 'package:flutter/material.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../Auth/presentation/views/widgets/anther_auth_account.dart';
import '../../../../tickets_details/presentation/views/tickets_details_view.dart';
import 'order_info_box.dart';
import 'payment_box.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OrderInfoBox(),
              const SizedBox(
                height: 30,
              ),
              const PaymentBox(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "+ Add Credit Card ",
                style: TextStyles.font17White500,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnotherAuthButton(
            title: "Approve Payment",
            onTap: () {
              AppRouter.navigateTo(const TicketsDetailsView());
            },
          ),
        )
      ],
    );
  }
}
