import 'package:fello_hackathon/utils/app_colors.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.top = 0.0,
    required this.labelText,
  });

  final double top;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: TextFormField(
        keyboardAppearance: Brightness.dark,
        style: const TextStyle(color: AppColors.kBlack),
        cursorColor: AppColors.kTextGrey,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: kTextStyle14RegularGrey,
          hintStyle: kTextStyle14RegularGrey,
          contentPadding: const EdgeInsets.all(12),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.grey, width: 0.2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.grey, width: 0.2),
          ),
        ),
      ),
    );
  }
}