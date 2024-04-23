import 'package:flutter/material.dart';
import 'package:historica/core/utils/app_text_styles.dart';
import 'package:historica/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/custom_smooth_page_controller_widget.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          physics: const BouncingScrollPhysics(),
          controller: controller,
          itemCount: OnBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 290,
                  width: 343,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(OnBoardingData[index].imagePath),
                    fit: BoxFit.fill,
                  )),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndiator(controller: controller),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  OnBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  OnBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                )
              ],
            );
          }),
    );
  }
}
