import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ImageAndName extends StatelessWidget {
  const ImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://i.pinimg.com/564x/5b/c1/f9/5bc1f9091bc3fe3aa4ff38c64c28695c.jpg",
          width: 80,
          height: 90,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Paul Wilson",
              style: TextStyles.font20White500.copyWith(fontSize: 24),
            ),
            Text(
              "London, UK",
              style: TextStyles.font12LightGrey400.copyWith(fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
