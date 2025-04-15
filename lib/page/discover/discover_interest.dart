import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/page/discover/interest_wrapper.dart';

class DiscoverInterest extends StatefulWidget {
  const DiscoverInterest({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiscoverInterestState();
  }
}

class _DiscoverInterestState extends State<DiscoverInterest> {
  bool showAll = false;

  void toggleAllInterest() {
    setState(() {
      showAll = !showAll;
    });
  }

  @override
  Widget build(context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Name(
                  text: 'Interest',
                  textColor: Colors.black,
                  textSize: 20,
                  textWeight: FontWeight.w700,
                ),
                CustomButton(
                  onClick: toggleAllInterest,
                  title: 'View All',
                  titleColor: Colors.purple.withOpacity(0.5),
                  titleSize: 15,
                  titleWeight: FontWeight.normal,
                ),
              ],
            ),
            const Gap(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InterestWrapper(
                  showAll: showAll,
                ),
                const Gap(
                  height: 20,
                ),
                if (showAll)
                  CustomButton(
                    onClick: () {},
                    title: 'Get on the Roll!',
                    titleColor: Colors.white,
                    titleSize: 15,
                    titleWeight: FontWeight.w600,
                    bgColor: Colors.deepPurple,
                    customPaddingHorizontal: 90.0,
                    customPaddingVertical: 10.0,
                    bottomLeft: 20,
                    bottomRight: 20,
                    topLeft: 20,
                    topRight: 20,
                  ),
              ],
            ),
            const Gap(
              height: 8,
            ),
            const Name(
              text: 'Around me',
              textColor: Colors.black,
              textSize: 20,
              textWeight: FontWeight.bold,
            ),
            Name(
              text: 'People with Music interest around you',
              textColor: Colors.black.withOpacity(0.5),
              textSize: 15,
            ),
            const Gap(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
