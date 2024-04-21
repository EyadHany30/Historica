import 'package:flutter/material.dart';
import 'package:historica/core/utils/app_assets.dart';

void main() {
  runApp(const Historica());
}

class Historica extends StatelessWidget {
  const Historica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(child: Image.asset(Assets.assetsImagesOnBoarding))),
    );
  }
}
