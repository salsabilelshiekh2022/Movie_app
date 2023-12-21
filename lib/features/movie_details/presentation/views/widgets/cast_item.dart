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
            "https://i.pinimg.com/564x/ac/ec/ee/aceceecd1dd4c92c552a3851875f40f1.jpg",
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
