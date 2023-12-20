import 'package:flutter/widgets.dart';

import '../../../../../core/utils/app_text_styles.dart';

class SignText extends StatelessWidget {
  const SignText({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.font14DarkGrey500,
    );
  }
}
