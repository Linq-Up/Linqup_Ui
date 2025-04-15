import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/page/search_partner/image_wrapper.dart';

class PartnerCardContent extends StatelessWidget {
  const PartnerCardContent({
    required this.image,
    required this.userName,
    required this.userAge,
    required this.userLocation,
    required this.userDistance,
    required this.instagramHandler,
    required this.twitterHandler,
    super.key,
  });

  final String image;
  final String userName;
  final String userAge;
  final String userLocation;
  final String userDistance;
  final void Function() instagramHandler;
  final void Function() twitterHandler;

  @override
  Widget build(context) {
    return SizedBox(
      child: Stack(
        children: [
          ImageWrapper(image: image),
          Container(
            height: 390,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: CustomButton(
              onClick: () {},
              bgColor: Colors.white.withOpacity(0.3),
              topLeft: 20.0,
              topRight: 20.0,
              bottomLeft: 20.0,
              bottomRight: 20.0,
              customPaddingVertical: 5,
              customPaddingHorizontal: 10,
              title: userDistance,
              titleColor: Colors.white,
              titleWeight: FontWeight.w100,
              titleSize: 12,
            ),
          ),
          // Name(text: userDistance, textColor: Colors.white, textSize: 13),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomButton(
                      onClick: instagramHandler,
                      imageIcon: 'assets/png/instagram.png',
                    ),
                    const Gap(
                      width: 20.0,
                    ),
                    CustomButton(
                      onClick: twitterHandler,
                      imageIcon: 'assets/png/twitter.png',
                    )
                  ],
                ),
                const Gap(height: 3.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Name(
                      text: userName,
                      textColor: Colors.white,
                      textSize: 23,
                      textWeight: FontWeight.w500,
                    ),
                    const Gap(
                      width: 2.0,
                    ),
                    Name(
                        text: userAge,
                        textColor: Colors.white,
                        textSize: 23,
                        textWeight: FontWeight.w500),
                  ],
                ),
                const Gap(height: 2.0),
                Name(
                  text: userLocation,
                  textColor: Colors.white,
                  textSize: 17,
                  textWeight: FontWeight.w100,
                ),
                const Gap(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
