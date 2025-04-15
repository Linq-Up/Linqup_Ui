import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/card/card_profile.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';

class HeaderWithProfile extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWithProfile({super.key});

  final spaceBetween = MainAxisAlignment.spaceBetween;
  final loveIcon = 'assets/png/loveIcon.png';
  final switchIcon = 'assets/png/switch.png';
  final profileImage = 'assets/jpg/profile.jpeg';

  @override
  Widget build(context) {
    return AppBar(
      title: CardProfile(profile: profileImage),
      elevation: 0.0,
      actions: [
        CustomButton(
          onClick: () {},
          imageIcon: loveIcon,
        ),
        const Gap(
          width: 10,
        ),
        CustomButton(
          onClick: () {},
          imageIcon: switchIcon,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
