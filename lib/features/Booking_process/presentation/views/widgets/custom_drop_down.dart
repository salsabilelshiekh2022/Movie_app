import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedValue;
  List<String> options = ['12/02/2024', '20/01/2024', '08/05/2024'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // Open the dropdown menu
            _showDropdownMenu(context);
          },
          child: Container(
            height: 40,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(color: Color(0xff151729)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedValue ?? '20/01/2024',
                  style: const TextStyle(color: AppColors.white, fontSize: 14),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showDropdownMenu(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromPoints(
          overlay.localToGlobal(Offset.zero, ancestor: overlay),
          overlay.localToGlobal(Offset.zero, ancestor: overlay),
        ),
        Offset.zero & overlay.size,
      ),
      items: options.map((String option) {
        return PopupMenuItem<String>(
          value: option,
          child: SizedBox(
            height: 50, // Set the height of each item in the dropdown menu
            child: Center(
              child: Text(option),
            ),
          ),
        );
      }).toList(),
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedValue = value;
        });
      }
    });
  }
}
