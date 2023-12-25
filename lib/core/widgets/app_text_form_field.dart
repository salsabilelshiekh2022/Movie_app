import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.validator,
    this.onSave,
    this.secure = false,
    this.focusNode,
    this.onEditingComplete,
    this.textInputAction,
    this.keyBoardType,
  });
  final bool secure;
  final String? hintText;
  final String? Function(String?)? validator;

  final void Function(String?)? onSave;

  final FocusNode? focusNode;
  final TextInputType? keyBoardType;

  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        keyboardType: keyBoardType,
        obscureText: secure,
        cursorColor: Colors.white,
        onSaved: onSave,

        style: TextStyles.font20White500,
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction,
        validator: validator, //
        decoration: InputDecoration(
          errorStyle: const TextStyle(color: AppColors.hotPink),
          hintText: hintText,
          hintStyle: TextStyles.font20White500,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.darkgrey,
            ),
          ),
          enabledBorder: inputBorder(AppColors.darkgrey),
          focusedBorder: inputBorder(AppColors.hotPink),
          errorBorder: inputBorder(AppColors.hotPink),
          focusedErrorBorder: inputBorder(AppColors.hotPink),
        ),
      ),
    );
  }
}

InputBorder inputBorder(Color color) {
  return UnderlineInputBorder(
    borderSide: BorderSide(color: color),
  );
}
