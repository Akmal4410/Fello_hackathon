import 'package:fello_hackathon/presentation/feature/splash/splash_page.dart';
import 'package:fello_hackathon/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  fontFamily: 'Taviraj',
                ),
            primarySwatch: AppColors.appColor,
            scaffoldBackgroundColor: Colors.black,
          ),
          home: const SplashPage(),
        );
      },
    );
  }
}
