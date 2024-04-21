import 'package:flutter/material.dart';
import 'package:historica/core/routes/app_router.dart';
import 'package:historica/core/utils/app_colors.dart';

void main() {
  runApp(const Historica());
}

class Historica extends StatelessWidget {
  const Historica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
