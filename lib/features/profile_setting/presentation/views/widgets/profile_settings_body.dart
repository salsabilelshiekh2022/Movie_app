import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/router/app_router.dart';
import 'package:movie_app/features/Home/presentation/views/home_view.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../Auth/presentation/views/widgets/anther_auth_account.dart';
import 'edit_text_form_field.dart';
import 'image_and_name.dart';

class ProfileSettingsBody extends StatelessWidget {
  const ProfileSettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageAndName(),
                const SizedBox(
                  height: 30,
                ),
                EditTextFormField(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      AppAssets.imagesVisaIcon,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  hint: "•••• •••• •••• 4567",
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text(
                      "Add Credit Card",
                      style: TextStyles.font17White500,
                    ),
                    const Icon(
                      Icons.double_arrow_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Full Name",
                  style: TextStyles.font14DarkGrey500,
                ),
                const EditTextFormField(
                  hint: "Paul Wilson",
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Email",
                  style: TextStyles.font14DarkGrey500,
                ),
                const EditTextFormField(
                  hint: "Your@email.com",
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Password",
                  style: TextStyles.font14DarkGrey500,
                ),
                const EditTextFormField(
                  hint: "••••••••••••",
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Address",
                  style: TextStyles.font14DarkGrey500,
                ),
                const EditTextFormField(
                  hint: "52 Whitby Road, Dersingham, UK",
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Zipcode",
                  style: TextStyles.font14DarkGrey500,
                ),
                const EditTextFormField(
                  hint: "PE31 9ZB",
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnotherAuthButton(
            title: "Save Changes",
            onTap: () {
              AppRouter.navigateAndPop(const HomeView());
            },
          ),
        )
      ],
    );
  }
}
