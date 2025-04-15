import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    required this.userImage,
    required this.userName,
    required this.userAge,
    required this.userDistance,
    required this.userLocation,
    required this.cardHeight,
    required this.cardWidth,
    this.containerBorderColor,
    this.containerBorderWidth,
    this.containerBorderRadius,
    required this.topic,
    this.top,
    this.bottom,
    this.match,
    super.key,
  });

  final String userImage;
  final String userName;
  final String userAge;
  final String userDistance;
  final String userLocation;
  final double cardHeight;
  final double cardWidth;
  final Color? containerBorderColor;
  final double? containerBorderWidth;
  final double? containerBorderRadius;
  final bool topic;
  final double? bottom;
  final double? top;
  final String? match;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: containerBorderColor ?? Colors.transparent,
              width: containerBorderWidth ?? 0.0),
          borderRadius: BorderRadius.circular(containerBorderRadius ?? 0.0)),
      height: cardHeight,
      width: cardWidth,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              userImage,
              width: cardWidth,
              height: cardHeight,
              fit: BoxFit.cover,
            ),
          ),
          topic
              ? Positioned(
                  top: 0,
                  left: 43,
                  child: CustomButton(
                    onClick: () {},
                    title: match!,
                    titleColor: Colors.white,
                    customPaddingHorizontal: 15,
                    customPaddingVertical: 5,
                    bottomLeft: 10.0,
                    bottomRight: 10.0,
                    titleSize: 10,
                    titleWeight: FontWeight.w600,
                    bgColor: Colors.purple,
                  ),
                )
              :
              // 'NEW' Batch
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomButton(
                      onClick: () {},
                      borderColor: Colors.purple.withOpacity(0.5),
                      title: 'NEW',
                      titleColor: Colors.white,
                      customPaddingHorizontal: 3,
                      customBorderRadius: 5,
                      titleSize: 10,
                      titleWeight: FontWeight.w600,
                      bgColor: Colors.deepPurple,
                    ),
                  ),
                ),

          // Distance Batch
          Positioned(
            top: top,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  CustomButton(
                    onClick: () {},
                    title: userDistance,
                    titleSize: 10,
                    titleColor: Colors.white,
                    customPaddingHorizontal: 8,
                    customPaddingVertical: 2,
                    bgColor: Colors.white.withOpacity(0.4),
                    bottomLeft: 10.0,
                    bottomRight: 10.0,
                    topLeft: 10.0,
                    topRight: 10.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Name(
                        text: userName,
                        textColor: Colors.white,
                        textSize: 16,
                        textWeight: FontWeight.w600,
                      ),
                      const Gap(width: 5),
                      Name(
                        text: userAge,
                        textColor: Colors.white,
                        textSize: 16,
                        textWeight: FontWeight.w600,
                      ),
                      const Gap(
                        width: 5,
                      ),
                      const Icon(
                        Icons.circle,
                        color: Colors.green,
                        size: 10,
                      )
                    ],
                  ),
                  Name(
                    text: userLocation,
                    textColor: Colors.white,
                    textSize: 16,
                    textWeight: FontWeight.w200,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
