import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/profile_settings_body.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset(AppAssets.imagesBars),
          )
        ],
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
          ),
        ),
        title: Text(
          "Profile Settings",
          style: TextStyles.font17White500.copyWith(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: const ProfileSettingsBody(),
    );
  }
}
