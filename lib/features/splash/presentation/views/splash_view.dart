import 'package:flutter/material.dart';
import 'package:historica/core/functions/navigation.dart';
import 'package:historica/core/utils/app_strings.dart';
import 'package:historica/core/utils/app_text_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(const Duration(seconds: 3), () {
    customNavigate(context, "/onBoarding");
  });
}
