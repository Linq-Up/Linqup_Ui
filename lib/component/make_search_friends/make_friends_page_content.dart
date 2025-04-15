import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/card/card.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';

class MakeFriendsPageContent extends StatefulWidget {
  const MakeFriendsPageContent({super.key});

  @override
  State<MakeFriendsPageContent> createState() {
    return _MakeFriendsSearchPartnersNav();
  }
}

class _MakeFriendsSearchPartnersNav extends State<MakeFriendsPageContent> {
  final backgroundImage = 'assets/jpg/city.jpg';
  final backgroundImage2 = 'assets/jpg/couple.jpg';
  final travelText = 'Travel';
  final travelText2 = 'Casual Dating';
  final travelIcon = 'assets/png/tree.png';
  final travelIcon2 = 'assets/png/casual_dating.png';
  final contentText =
      'If you could live anywhere in the world, where would you pick?';
  final contentText2 =
      'Writing engaging dating profiles and initiating conversations to understanding healthy relationship dynamics';
  final contentProfile = 'assets/jpg/profile.jpeg';
  final contentProfile2 = 'assets/jpg/profile2.jpg';
  final contentName = 'Mirande';
  final contentState = 'Lagos';
  final contentName2 = 'Clara Vincent';
  final contentState2 = 'Abuja';

  @override
  Widget build(context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 90.0),
          child: Center(
            child: Column(
              children: [
                CardFriends(
                  bgImage: backgroundImage,
                  cardButtonText: travelText,
                  cardButtonIcon: travelIcon,
                  contentText: contentText,
                  profileImage: contentProfile,
                  profileName: contentName,
                  profileState: contentState,
                ),
                const Gap(
                  height: 20,
                ),
                CardFriends(
                  bgImage: backgroundImage2,
                  cardButtonText: travelText2,
                  cardButtonIcon: travelIcon2,
                  contentText: contentText2,
                  profileImage: contentProfile2,
                  profileName: contentName2,
                  profileState: contentState2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
