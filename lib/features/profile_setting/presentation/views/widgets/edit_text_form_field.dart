import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class EditTextFormField extends StatelessWidget {
  const EditTextFormField({super.key, this.prefixIcon, required this.hint});
  final Widget? prefixIcon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: const Color(0xff14141d),
      child: TextFormField(
        cursorColor: AppColors.purple,
        style: TextStyles.font17White500,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyles.font17White500,
            fillColor: const Color(0xff14141d),
            prefixIcon: prefixIcon,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff14141d),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff14141d),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff14141d),
              ),
            )),
      ),
    );
  }
}
