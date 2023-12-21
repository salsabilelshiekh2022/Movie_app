import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 12),
        child: Text(
          title,
          style: TextStyles.font28White500.copyWith(fontSize: 26),
        ),
      ),
    );
  }
}
