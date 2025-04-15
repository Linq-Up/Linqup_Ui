import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class MatchesCardWrapper extends StatelessWidget {
  const MatchesCardWrapper(
      {required this.child,
      required this.title,
      required this.coloredTitle,
      super.key});

  final Widget child;
  final String title;
  final String coloredTitle;

  @override
  Widget build(context) {
    return Column(
      children: [
        child,
        const Gap(
          height: 5,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Name(
              text: title,
              textColor: Colors.black.withOpacity(0.5),
              textSize: 15,
              textWeight: FontWeight.normal,
            ),
            const Gap(
              width: 5,
            ),
            Name(
              text: coloredTitle,
              textColor: Colors.purple.withOpacity(0.5),
              textSize: 15,
              textWeight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }
}
