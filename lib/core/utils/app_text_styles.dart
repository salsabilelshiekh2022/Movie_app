import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class TextStyles {
  static TextStyle font20White500 = const TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font17White500 = const TextStyle(
    color: AppColors.white,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font14HotPinkBold = const TextStyle(
    color: AppColors.hotPink,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14White500 = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font28White500 = const TextStyle(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font32WhiteBold = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static TextStyle font14DarkGrey500 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.darkgrey,
  );
}
