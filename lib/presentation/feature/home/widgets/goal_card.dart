import 'package:fello_hackathon/utils/assets.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kAppPaddingAll12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.16),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              LottieBuilder.asset(
                kGoldAnimation,
                height: 50.w,
                width: 50.w,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Text(
                  "Building a game PC",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: kTextStyle16MediumBlack.copyWith(height: 1.2),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "25%",
                  style: kTextStyle12RegularGrey,
                ),
              ),
              kHeight4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Target",
                    style: kTextStyle12RegularGrey,
                  ),
                  Text(
                    "\$ 10,000",
                    style: kTextStyle12RegularGrey,
                  ),
                ],
              ),
              kHeight4,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mar 24",
                    style: kTextStyle14MediumBlack,
                  ),
                  Text(
                    "\$ 5000",
                    style: kTextStyle14MediumBlack,
                  ),
                ],
              ),
            ],
          ),
          kWidth12,
        ],
      ),
    );
  }
}
