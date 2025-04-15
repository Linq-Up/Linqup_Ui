import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/bottom_modal/bottom_modal.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/header/header.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/component/wrapper/wrapper_container.dart';
import 'package:linqup_mobile_application/page/messages/message_card.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(context) {
    return WrapperContainer(
      header: Header(
          backgroundColor: Colors.deepPurple.shade900,
          showLeading: true,
          titleColor: Colors.white,
          leadingWidget: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
      child: Container(
        color: Colors.deepPurple.shade900,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Name(
                    text: 'Recent Matches',
                    textColor: Colors.white,
                    textSize: 16,
                  ),
                  const Gap(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomButton(
                          onClick: () {},
                          iconData: Icons.favorite,
                          iconColor: Colors.white,
                          bgColor: Colors.purple.shade200,
                          customPaddingHorizontal: 30,
                          customPaddingVertical: 20,
                          topLeft: 10,
                          topRight: 10,
                          bottomLeft: 10,
                          bottomRight: 10,
                          title: '32',
                          titleColor: Colors.white,
                          titleSize: 15,
                          titleWeight: FontWeight.w400,
                        ),
                        const Gap(
                          width: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/jpg/profile.jpeg',
                            height: 85,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(
                          width: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/jpg/profile2.jpg',
                            height: 85,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(
                          width: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/jpg/women3.jpg',
                            height: 85,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomModal(
              child: Column(
                children: [
                  MessageCard(
                    userImage: 'assets/jpg/profile.jpeg',
                    userName: 'Ebube John Enyi',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300,
                  ),
                  MessageCard(
                    userImage: 'assets/jpg/profile2.jpg',
                    userName: 'Clara Vincent',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300.withOpacity(0.0),
                  ),
                  MessageCard(
                    userImage: 'assets/jpg/women2.jpg',
                    userName: 'Joy Peters',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300,
                  ),
                  MessageCard(
                    userImage: 'assets/jpg/women5.jpg',
                    userName: 'Peggy Ola',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300,
                  ),
                  MessageCard(
                    userImage: 'assets/jpg/women4.jpg',
                    userName: 'May Olawale',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300.withOpacity(0.0),
                  ),
                  MessageCard(
                    userImage: 'assets/jpg/profile.jpeg',
                    userName: 'Adeyemi Tinubu',
                    message:
                        'I am Flutter Developer and i am able to work on any project',
                    time: '9:45',
                    onTap: () {},
                    online: Colors.purple.shade300.withOpacity(0.0),
                  ),
                  const Gap(
                    height: 90,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
