import 'package:flutter/widgets.dart';
import 'package:movie_app/core/router/app_router.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../sign_up/presentation/views/sign_up_view.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.navigateTo(const SignUpView());
      },
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account ? ",
              style: TextStyles.font14White500,
            ),
            TextSpan(
              text: 'Sign up',
              style: TextStyles.font14HotPinkBold,
            ),
          ],
        ),
      ),
    );
  }
}
