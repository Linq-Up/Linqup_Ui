import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/page/onboard/slide_content.dart';

class OnboardSlider extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onPageChange;
  final CarouselSliderController controller;

  const OnboardSlider({
    required this.currentIndex,
    required this.onPageChange,
    required this.controller,
    super.key,
  });

  @override
  State<OnboardSlider> createState() => _OnboardSliderState();
}

class _OnboardSliderState extends State<OnboardSlider> {
  List<SlideContent> items = [
    SlideContent(
      image: 'assets/png/kiss_1.png',
      label: 'Find Your Kind of Connection',
      subContent:
          "Whether you're looking for love, friendship, or meaningful connections, we’ve created a space that fits your vibe",
      buttonText: 'Find Your Match!',
      onClick: (ctx) {
        Navigator.pushNamed(ctx, '/login');
      },
    ),
    SlideContent(
      image: 'assets/png/date_online_2.png',
      label: 'Chat, Flirt, or Just Chill',
      subContent:
          "Meet new people, spark real conversations, and build connection that go beyond swipes and small talk.",
      buttonText: 'Chat',
      onClick: (ctx) {
        Navigator.pushNamed(ctx, '/login');
      },
    ),
    SlideContent(
      image: 'assets/png/date_online_3.png',
      label: 'Friends First? Totally Fine.',
      subContent:
          "Not ready for dating? No problem. Connect with like-minded people and build your circle at your own pace.",
      buttonText: 'Find Friends',
      onClick: (ctx) {
        Navigator.pushNamed(ctx, '/login');
      },
    ),
    SlideContent(
      image: 'assets/png/date_online_4.png',
      label: 'Share the Love & Earn',
      subContent:
          "Invite your friends and earn rewards for every successful referrals. The more you share, the more you earn!",
      buttonText: 'Refer a Friends',
      onClick: (ctx) {
        Navigator.pushNamed(ctx, '/login');
      },
    ),
    SlideContent(
      image: 'assets/png/date_online_5.png',
      label: 'Your Journey Starts Now',
      buttonText: 'Create Account',
      secondButtonText: 'Log In',
      onClick: (ctx) {
        Navigator.pushNamed(ctx, '/sign-up');
      },
      secondOnClick: (ctx) {
        Navigator.pushNamed(ctx, '/login');
      },
    ),
  ];

  @override
  Widget build(context) {
    return CarouselSlider(
      carouselController: widget.controller,
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.75,
          initialPage: 0,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) {
            widget.onPageChange(index);
          }),
      items: items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: i,
            );
          },
        );
      }).toList(),
    );
  }
}
