import 'package:flutter/material.dart';
import 'package:historica/core/utils/app_assets.dart';
import 'package:historica/core/utils/app_text_styles.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/custom_smooth_page_controller_widget.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(Assets.assetsImagesOnBoarding1),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndiator(controller: _controller),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Explore the history With Historica in a smart way",
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Explore the history With Historica in a smart way",
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                )
              ],
            );
          }),
    );
  }
}
