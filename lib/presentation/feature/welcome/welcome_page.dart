import 'package:fello_hackathon/presentation/feature/home/home_page.dart';
import 'package:fello_hackathon/presentation/widgets/app_eleveted_button.dart';
import 'package:fello_hackathon/presentation/widgets/app_textfield.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "welcome to saving app",
                  style: kTextStyle14RegularWhite,
                ),
                Text(
                  "tell us your name",
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
                    top: 20.h,
                    labelText: "First Name",
                  ),
                  AppTextField(
                    top: 10.h,
                    labelText: "Last Name",
                  ),
                  kHeight8,
                  Text(
                    "enter the first & last name",
                    style: kTextStyle14RegularGrey,
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
