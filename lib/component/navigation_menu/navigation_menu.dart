import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/page/add/add_page.dart';
import 'package:linqup_mobile_application/page/discover/discover_page.dart';
import 'package:linqup_mobile_application/page/homepage/homepage.dart';
import 'package:linqup_mobile_application/page/matches/matches_page.dart';
import 'package:linqup_mobile_application/page/messages/message_page.dart';
import 'package:linqup_mobile_application/store/state_manager/navigation_menu_state.dart';
import 'package:provider/provider.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  final Color backgroundColor = Colors.purple;

  @override
  Widget build(context) {
    final navigationMenuState = Provider.of<NavigationMenuState>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10.0, left: 10.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 2,
                offset: const Offset(0, 0),
              )
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onClick: () => {
                    navigationMenuState.selectActiveMenu(0),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                      ),
                    ),
                  },
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.home,
                  bgColor: navigationMenuState.activeIndex == 0
                      ? backgroundColor
                      : Colors.white,
                  iconColor: navigationMenuState.activeIndex == 0
                      ? Colors.white
                      : Colors.purple.withOpacity(0.5),
                ),
                CustomButton(
                  onClick: () => {
                    navigationMenuState.selectActiveMenu(1),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DiscoverPage(),
                      ),
                    ),
                  },
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.assistant_navigation,
                  bgColor: navigationMenuState.activeIndex == 1
                      ? backgroundColor
                      : Colors.white,
                  iconColor: navigationMenuState.activeIndex == 1
                      ? Colors.white
                      : Colors.purple.withOpacity(0.3),
                ),
                CustomButton(
                  onClick: () => {
                    navigationMenuState.selectActiveMenu(2),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddPage(),
                      ),
                    ),
                  },
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.add,
                  bgColor: navigationMenuState.activeIndex == 2
                      ? backgroundColor
                      : Colors.white,
                  iconColor: navigationMenuState.activeIndex == 2
                      ? Colors.white
                      : Colors.purple.withOpacity(0.3),
                ),
                CustomButton(
                  onClick: () => {
                    navigationMenuState.selectActiveMenu(3),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MatchesPage(),
                      ),
                    ),
                  },
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.group,
                  bgColor: navigationMenuState.activeIndex == 3
                      ? backgroundColor
                      : Colors.white,
                  iconColor: navigationMenuState.activeIndex == 3
                      ? Colors.white
                      : Colors.purple.withOpacity(0.3),
                ),
                CustomButton(
                  onClick: () => {
                    navigationMenuState.selectActiveMenu(4),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MessagePage(),
                      ),
                    ),
                  },
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.message,
                  bgColor: navigationMenuState.activeIndex == 4
                      ? backgroundColor
                      : Colors.white,
                  iconColor: navigationMenuState.activeIndex == 4
                      ? Colors.white
                      : Colors.purple.withOpacity(0.3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
