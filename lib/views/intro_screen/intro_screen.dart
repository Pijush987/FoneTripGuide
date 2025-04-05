import '../views.dart';
import 'package:flutter/material.dart';
import 'package:avvtar/configs/configs.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 26,
            left: 0,
            child: Align(
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: SlideEffect(
                  dotColor: ThemeConfig.primaryColor,
                  activeDotColor: ThemeConfig.redClr1,
                  paintStyle: PaintingStyle.fill,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
