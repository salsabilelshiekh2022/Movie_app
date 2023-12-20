import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';

class AuthSocialButton extends StatelessWidget {
  const AuthSocialButton({
    super.key,
    this.onTap,
    required this.image,
  });
  final void Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: const ShapeDecoration(
            shape: OvalBorder(
                side: BorderSide(width: 1, color: AppColors.darkgrey))),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
