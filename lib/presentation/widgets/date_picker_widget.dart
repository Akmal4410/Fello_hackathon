import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 8.h),
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.2),
        ),
        child: Text(
          "Select a Date",
          style: kTextStyle12RegularGrey,
        ),
      ),
    );
  }
}
