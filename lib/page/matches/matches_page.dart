import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/header/header.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/component/wrapper/wrapper_container.dart';
import 'package:linqup_mobile_application/page/discover/discover_card.dart';
import 'package:linqup_mobile_application/page/matches/matches_card_wrapper.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(context) {
    return WrapperContainer(
      leftPadding: 10.0,
      rightPadding: 10.0,
      header: const Header(
          showLeading: true,
          leadingWidget: Icon(
            Icons.arrow_back_ios,
          )),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MatchesCardWrapper(
                  title: 'Likes',
                  coloredTitle: '15',
                  child: CustomButton(
                    onClick: () {},
                    iconData: Icons.favorite,
                    iconColor: Colors.white,
                    firstLayerPadding: 3.5,
                    customPaddingHorizontal: 17.0,
                    customPaddingVertical: 17.0,
                    firstLayerBorderColor: Colors.purple.withOpacity(0.6),
                    customBorderRadius: 100,
                    firstLayerBorderRadius: 100,
                    firstLayerBorderWidth: 2.0,
                    borderColor: Colors.purple,
                    bgColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
                const Gap(
                  width: 15,
                ),
                MatchesCardWrapper(
                  title: 'Connect',
                  coloredTitle: '32',
                  child: CustomButton(
                    onClick: () {},
                    iconData: Icons.message,
                    iconColor: Colors.white,
                    firstLayerPadding: 3.5,
                    customPaddingHorizontal: 17.0,
                    customPaddingVertical: 17.0,
                    firstLayerBorderColor: Colors.purple.withOpacity(0.6),
                    customBorderRadius: 100,
                    firstLayerBorderRadius: 100,
                    firstLayerBorderWidth: 2.0,
                    bgColor: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            const Gap(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Name(
                  text: 'Your Matches',
                  textColor: Colors.deepPurple.shade900,
                  textSize: 20,
                  textWeight: FontWeight.bold,
                ),
                const Gap(width: 5),
                Name(
                  text: '47',
                  textColor: Colors.purple.withOpacity(0.7),
                  textSize: 20,
                  textWeight: FontWeight.bold,
                ),
              ],
            ),
            const Gap(height: 20),
            Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 10.0,
                children: [
                  DiscoverCard(
                    topic: true,
                    top: 160,
                    bottom: 20,
                    match: '80% match',
                    containerBorderColor: Colors.purple.withOpacity(0.7),
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Germany',
                    userName: 'Ebube',
                    userImage: 'assets/jpg/profile.jpeg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                  DiscoverCard(
                    topic: true,
                    top: 160,
                    match: '30% match',
                    containerBorderColor: Colors.purple.withOpacity(0.7),
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Nigeria',
                    userName: 'Peggy',
                    userImage: 'assets/jpg/women1.jpg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                  DiscoverCard(
                    topic: true,
                    top: 160,
                    bottom: 20,
                    match: '50% match',
                    containerBorderColor: Colors.purple.withOpacity(0.7),
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Germany',
                    userName: 'Ebube',
                    userImage: 'assets/jpg/women2.jpg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                  DiscoverCard(
                    topic: true,
                    top: 160,
                    match: '100% match',
                    containerBorderColor: Colors.purple.withOpacity(0.7),
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Nigeria',
                    userName: 'Peggy',
                    userImage: 'assets/jpg/women5.jpg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                  DiscoverCard(
                    topic: true,
                    top: 160,
                    bottom: 20,
                    match: '100% match',
                    containerBorderColor: Colors.purple.withOpacity(0.7),
                    containerBorderWidth: 4.0,
                    containerBorderRadius: 24,
                    userAge: '14',
                    userDistance: '12km away',
                    userLocation: 'Germany',
                    userName: 'Ebube',
                    userImage: 'assets/jpg/profile2.jpg',
                    cardHeight: 250,
                    cardWidth: 170,
                  ),
                ],
              ),
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
