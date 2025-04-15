import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class SlideContent extends StatelessWidget {
  const SlideContent(
      {required this.image,
      required this.label,
      this.subContent,
      required this.buttonText,
      this.secondButtonText,
      required this.onClick,
      this.secondOnClick,
      super.key});

  final String image;
  final String label;
  final String? subContent;
  final String buttonText;
  final String? secondButtonText;
  final void Function(BuildContext context) onClick;
  final void Function(BuildContext context)? secondOnClick;

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(
            height: 40,
          ),
          Image.asset(
            image,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          const Gap(
            height: 20,
          ),
          SizedBox(
            width: 250,
            child: Name(
              text: label,
              textColor: Colors.deepPurple.shade900,
              textSize: 30,
              textWeight: FontWeight.bold,
            ),
          ),
          const Gap(height: 6),
          if (subContent != null && subContent!.isNotEmpty)
            SizedBox(
              width: 300,
              child: Text(
                subContent!,
                style: TextStyle(
                  color: Colors.deepPurple.shade900,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          const Gap(
            height: 30,
          ),
          CustomButton(
            onClick: () => onClick(context),
            title: buttonText,
            titleColor: Colors.white,
            titleSize: 16,
            titleWeight: FontWeight.w500,
            bgColor: Colors.deepPurple.shade900,
            customPaddingHorizontal: 80,
            customPaddingVertical: 12,
            customButtonWidth: 300,
            topLeft: 20,
            topRight: 20,
            bottomLeft: 20,
            bottomRight: 20,
          ),
          const Gap(
            height: 20,
          ),
          if (secondButtonText != null && secondButtonText!.isNotEmpty)
            CustomButton(
              onClick: () => secondOnClick!(context),
              title: secondButtonText!,
              titleColor: Colors.deepPurple.shade900,
              titleSize: 16,
              titleWeight: FontWeight.w500,
              bgColor: Colors.white,
              borderColor: Colors.deepPurple.shade900,
              borderWidth: 1.5,
              customPaddingHorizontal: 80,
              customPaddingVertical: 12,
              customButtonWidth: 300,
              topLeft: 20,
              topRight: 20,
              bottomLeft: 20,
              bottomRight: 20,
            ),
        ],
      ),
    );
  }
}
