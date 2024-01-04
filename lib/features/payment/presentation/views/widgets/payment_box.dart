import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class PaymentBox extends StatelessWidget {
  const PaymentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff28344a)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bankname",
                style: TextStyles.font20White500.copyWith(fontSize: 24),
              ),
              Text(
                "VISA",
                style: TextStyles.font20White500.copyWith(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "•••• •••• ••••   4567",
            style: TextStyles.font12LightGrey400.copyWith(fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "CARDHOLDER NAME",
                style: TextStyles.font12LightGrey400,
              ),
              const SizedBox(
                width: 60,
              ),
              Text(
                "EXPIRED DATE",
                style: TextStyles.font12LightGrey400,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "John Doe",
                style: TextStyles.font14White500,
              ),
              const SizedBox(
                width: 110,
              ),
              Text(
                "05/20",
                style: TextStyles.font14White500,
              )
            ],
          )
        ],
      ),
    );
  }
}
