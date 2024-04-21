import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:historica/core/utils/app_strings.dart';
import 'package:historica/core/widgets/custom_btn.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/custom_nav_bar.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/on_boarding_body_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              const CustomBtn(
                text: AppStrings.next,
              ),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}
