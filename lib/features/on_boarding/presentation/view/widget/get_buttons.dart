import 'package:flutter/material.dart';
import 'package:historica/core/functions/navigation.dart';
import 'package:historica/core/utils/app_strings.dart';
import 'package:historica/core/utils/app_text_styles.dart';
import 'package:historica/core/widgets/custom_btn.dart';
import 'package:historica/features/on_boarding/data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == OnBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, "/signUp");
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 100),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
