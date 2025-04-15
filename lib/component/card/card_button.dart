import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    required this.cardButtonText,
    this.cardButtonImage,
    this.backgroundColor,
    this.cardButtonTextColor,
    this.borderColor,
    this.customPaddingVertical,
    this.customPaddingHorizontal,
    required this.onTap,
    super.key,
  });
  final String? cardButtonImage;
  final String cardButtonText;
  final Color? cardButtonTextColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? customPaddingVertical;
  final double? customPaddingHorizontal;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: customPaddingHorizontal ?? 0,
        vertical: customPaddingVertical ?? 0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white.withOpacity(0.0),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: borderColor ?? Colors.blue.withOpacity(0.0),
          width: 1,
        ),
      ),
      child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(cardButtonImage!),
              const Gap(
                width: 5,
              ),
              Name(
                  text: cardButtonText,
                  textColor:
                      cardButtonTextColor ?? Colors.white.withOpacity(0.0),
                  textSize: 15)
            ],
          )),
    );
  }
}
