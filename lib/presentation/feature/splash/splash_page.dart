import 'package:fello_hackathon/presentation/feature/welcome/welcome_page.dart';
import 'package:fello_hackathon/utils/assets.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => _gotoNextPage(context),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(kGoldAnimation),
            Text(
              "welcome to saving app",
              style: kTextStyle30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _gotoNextPage(BuildContext context) async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const WelcomePage()),
          (route) => false,
        );
      },
    );
  }
}
