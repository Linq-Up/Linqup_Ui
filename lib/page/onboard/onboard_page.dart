import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/page/onboard/onboard_slider.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int _currentIndexSlide = 0;

  final int totalIndexSlide = 5;
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade900,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OnboardSlider(
                          controller: _carouselController,
                          currentIndex: _currentIndexSlide,
                          onPageChange: (index) {
                            setState(() {
                              _currentIndexSlide = index;
                            });
                          },
                        ),
                        // const Gap(
                        //   height: 20,
                        // ),
                        Center(
                          child: SizedBox(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomButton(
                                  onClick: () {
                                    _carouselController.jumpToPage(4);
                                  },
                                  title: 'Skip',
                                  titleColor: Colors.deepPurple.shade900,
                                  titleSize: 16,
                                  titleWeight: FontWeight.bold,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children:
                                        List.generate(totalIndexSlide, (index) {
                                      bool isActive =
                                          index == _currentIndexSlide;
                                      return AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        height: 10.0,
                                        width: isActive ? 25.0 : 10.0,
                                        decoration: BoxDecoration(
                                          color: isActive
                                              ? Colors.deepPurple
                                              : Colors.grey.shade400,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                                CustomButton(
                                  onClick: () {
                                    if (_currentIndexSlide < 4) {
                                      _carouselController.nextPage();
                                    } else {
                                      Navigator.pushNamed(context, '/sign-up');
                                    }
                                  },
                                  title: 'Next',
                                  titleColor: Colors.deepPurple.shade900,
                                  titleSize: 16,
                                  titleWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
