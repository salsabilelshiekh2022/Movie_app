import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class MovieStory extends StatelessWidget {
  const MovieStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'After the devastating od a Avengers :Infinety war(2018), the universe is in runis. With the help of  remaining allies , the Advengers assamble once more in order to reverce thanos actions.',
            style: TextStyles.font14DarkGrey500.copyWith(fontSize: 12),
          ),
          verticalSpace(8),
          Text.rich(
            TextSpan(
                text: "Directors: ",
                style: TextStyles.font14DarkGrey500,
                children: [
                  TextSpan(
                      text: "Anthony Russo, Joe Russo",
                      style: TextStyles.font14White500),
                ]),
          ),
          verticalSpace(3),
          Text.rich(
            TextSpan(
                text: "Writers: ",
                style: TextStyles.font14DarkGrey500,
                children: [
                  TextSpan(
                      text: "Anthony Russo, Joe Russo",
                      style: TextStyles.font14White500),
                ]),
          ),
        ],
      ),
    );
  }
}
