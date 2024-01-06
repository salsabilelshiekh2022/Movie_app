import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/spacing.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            "https://i.pinimg.com/564x/71/80/1c/71801c22a45e3bc0f714705ed49cbc9e.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        verticalSpace(5),
        Text(
          "Robert Downey",
          style: TextStyles.font14DarkGrey500,
        ),
      ],
    );
  }
}
