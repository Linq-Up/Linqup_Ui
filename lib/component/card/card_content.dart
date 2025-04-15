import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/card/card_button.dart';
import 'package:linqup_mobile_application/component/card/card_profile.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class CardContent extends StatelessWidget {
  const CardContent(
      {this.cardButtonText,
      this.cardButtonIcon,
      this.profilePath,
      this.profileName,
      this.profileState,
      required this.text,
      super.key});
  final String? cardButtonText;
  final String? cardButtonIcon;
  final String text;
  final String? profilePath;
  final String? profileName;
  final String? profileState;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardButton(
          onTap: () {},
          customPaddingHorizontal: 10.0,
          customPaddingVertical: 5.0,
          cardButtonTextColor: Colors.white,
          backgroundColor: Colors.white.withOpacity(0.2),
          borderColor: Colors.blue.shade50,
          cardButtonText: cardButtonText!,
          cardButtonImage: cardButtonIcon!,
        ),
        const Gap(
          height: 140,
        ),
        SizedBox(
            width: 250,
            child: Name(
              text: text,
              textColor: Colors.white,
              textSize: 18,
              textWeight: FontWeight.w700,
            )),
        const Gap(height: 10),
        CardProfile(
          profile: profilePath!,
          name: profileName!,
          state: profileState!,
        ),
      ],
    );
  }
}
