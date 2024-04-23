import 'package:flutter/material.dart';
import 'package:historica/core/functions/navigation.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/custom_nav_bar.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/get_buttons.dart';
import 'package:historica/features/on_boarding/presentation/view/widget/on_boarding_body_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomNavBar(
                onTab: () {
                  customReplacementNavigate(context, "/signUp");
                },
              ),
              OnBoardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 88,
              ),
              GetButtons(
                currentIndex: currentIndex,
                controller: _controller,
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
