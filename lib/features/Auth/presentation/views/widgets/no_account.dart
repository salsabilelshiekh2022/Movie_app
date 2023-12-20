import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_text_styles.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.font14White500,
    );
  }
}
