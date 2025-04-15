import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/header/header.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/component/wrapper/wrapper_container.dart';
import 'package:linqup_mobile_application/page/discover/discover_card.dart';
import 'package:linqup_mobile_application/page/discover/discover_interest.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WrapperContainer(
        header: Header(
          showLeading: false,
          dropdown: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onClick: () {},
                iconData: Icons.location_on_outlined,
                iconColor: Colors.purple.withOpacity(0.5),
              ),
              const Name(
                  text: 'Germany', textColor: Colors.black, textSize: 13),
              CustomButton(
                onClick: () {},
                iconData: Icons.keyboard_arrow_down,
                iconColor: Colors.purple.withOpacity(0.5),
              ),
            ],
          ),
        ),
        child: const Column(
          children: [
            Gap(height: 10),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DiscoverCard(
                    topic: false,
                    top: 90,
                    userAge: '14',
                    userDistance: '3 km away',
                    userLocation: 'Germany',
                    userName: 'Ebube',
                    userImage: 'assets/jpg/profile.jpeg',
                    cardHeight: 170,
                    cardWidth: 120,
                  ),
                  Gap(width: 12),
                  DiscoverCard(
                    topic: false,
                    top: 90,
                    userAge: '24',
                    userDistance: '310 km away',
                    userLocation: 'Nigeria',
                    userName: 'Glory,',
                    userImage: 'assets/jpg/women1.jpg',
                    cardHeight: 170,
                    cardWidth: 120,
                  ),
                  Gap(width: 12),
                  DiscoverCard(
                    topic: false,
                    top: 90,
                    userAge: '25',
                    userDistance: '210 km away',
                    userLocation: 'Turkey',
                    userName: 'Pekky,',
                    userImage: 'assets/jpg/women2.jpg',
                    cardHeight: 170,
                    cardWidth: 120,
                  ),
                  Gap(width: 12),
                  DiscoverCard(
                    topic: false,
                    top: 90,
                    userAge: '30',
                    userDistance: '45 km away',
                    userLocation: 'London',
                    userName: 'Ramon,',
                    userImage: 'assets/jpg/women5.jpg',
                    cardHeight: 170,
                    cardWidth: 120,
                  ),
                ],
              ),
            ),
            Gap(height: 10),
            DiscoverInterest(),
          ],
        ));
  }
}
