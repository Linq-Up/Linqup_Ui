import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';

class CardController extends StatelessWidget {
  const CardController({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'assets/png/rectangle_controller.png',
            ),
          ),
          const Gap(width: 10),
          Padding(
            padding:
                const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.thumb_up,
                  iconColor: Colors.white,
                  bgColor: Colors.white.withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.message,
                  iconColor: Colors.white,
                  bgColor: Colors.white.withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.more_horiz,
                  iconColor: Colors.white,
                  bgColor: Colors.white.withOpacity(0.5),
                ),
                const Gap(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
