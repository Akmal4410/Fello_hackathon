import 'package:fello_hackathon/presentation/feature/home/home_page.dart';
import 'package:fello_hackathon/presentation/widgets/app_eleveted_button.dart';
import 'package:fello_hackathon/presentation/widgets/app_textfield.dart';
import 'package:fello_hackathon/presentation/widgets/date_picker_widget.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddGoalPage extends StatelessWidget {
  const AddGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Goals"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Save money, set goals,",
                  style: kTextStyle14RegularWhite,
                ),
                Text(
                  "see results! 🌟💰",
                  style: kTextStyle30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextField(
                    top: 16.h,
                    labelText: "Goal Name",
                  ),
                  AppTextField(
                    top: 8.h,
                    labelText: "Amount",
                  ),
                  DatePickerWidget(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2050),
                      );
                    },
                  ),
                  const Spacer(),
                  AppElevetedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (route) => false,
                      );
                    },
                    label: "Continue",
                  ),
                  kHeight16,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
