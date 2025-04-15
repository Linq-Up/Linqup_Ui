import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/button/custom_button.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';
import 'package:linqup_mobile_application/store/state_manager/make_and_search_state.dart';
import 'package:linqup_mobile_application/store/state_manager/navigation_menu_state.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    required this.showLeading,
    this.leadingWidget,
    this.dropdown,
    this.backgroundColor,
    this.titleColor,
    super.key,
  });

  final spaceBetween = MainAxisAlignment.spaceBetween;
  final notificationIcon = 'assets/png/notification.png';
  final loveIcon = 'assets/png/loveIcon.png';
  final switchIcon = 'assets/png/switch.png';
  final logo = 'assets/png/LinQup.png';
  final profile = 'assets/jpg/profile.jpeg';
  final Widget? dropdown;
  final bool showLeading;
  final Widget? leadingWidget;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(context) {
    Widget contentHeader = const SizedBox();

    final toggleState = Provider.of<MakeAndSearchStateNav>(context);
    final navigationMenuState = Provider.of<NavigationMenuState>(context);

    if (navigationMenuState.activeIndex == 0) {
      contentHeader = toggleState.isFirstButtonActive
          ? Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CustomButton(
                onClick: () {},
                customPaddingHorizontal: 10.0,
                customPaddingVertical: 10.0,
                customBorderRadius: 100,
                iconData: Icons.notifications_none_rounded,
                iconColor: Colors.purple.withOpacity(0.5),
                borderColor: Colors.purple.withOpacity(0.5),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    children: [
                      CustomButton(
                        onClick: () {},
                        customPaddingHorizontal: 10.0,
                        customPaddingVertical: 10.0,
                        customBorderRadius: 100,
                        iconData: Icons.favorite,
                        iconColor: Colors.purple,
                        borderColor: Colors.purple.withOpacity(0.5),
                      ),
                      const Gap(
                        width: 10,
                      ),
                      CustomButton(
                        onClick: () {},
                        customPaddingHorizontal: 10.0,
                        customPaddingVertical: 10.0,
                        customBorderRadius: 100,
                        iconData: Icons.swap_calls,
                        iconColor: Colors.purple,
                        borderColor: Colors.purple.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            );
    } else if (navigationMenuState.activeIndex == 1) {
      contentHeader = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.search,
                  iconColor: Colors.purple,
                  borderColor: Colors.purple.withOpacity(0.5),
                ),
                const Gap(
                  width: 10,
                ),
                CustomButton(
                  onClick: () {},
                  customPaddingHorizontal: 10.0,
                  customPaddingVertical: 10.0,
                  customBorderRadius: 100,
                  iconData: Icons.swap_calls,
                  iconColor: Colors.purple,
                  borderColor: Colors.purple.withOpacity(0.5),
                ),
              ],
            ),
          ),
        ],
      );
    } else if (navigationMenuState.activeIndex == 2) {
      contentHeader = Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CustomButton(
          onClick: () {},
          customPaddingHorizontal: 10.0,
          customPaddingVertical: 10.0,
          customBorderRadius: 100,
          imageIcon: 'assets/png/switch.png',
          borderColor: Colors.purple.withOpacity(0.5),
        ),
      );
    } else if (navigationMenuState.activeIndex == 3) {
      contentHeader = Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CustomButton(
          onClick: () {},
          customPaddingHorizontal: 10.0,
          customPaddingVertical: 10.0,
          customBorderRadius: 100,
          imageIcon: 'assets/png/switch.png',
          borderColor: Colors.purple.withOpacity(0.5),
        ),
      );
    }

    Widget contentTitleHeader = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        dropdown ?? const SizedBox(),
        navigationMenuState.activeIndex == 1
            ? const Name(
                text: 'Discover',
                textColor: Colors.black,
                textSize: 25,
                textWeight: FontWeight.w700,
              )
            : toggleState.isFirstButtonActive
                ? Image.asset(
                    logo,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      profile,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
      ],
    );

    if (navigationMenuState.activeIndex == 3) {
      contentTitleHeader = const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Name(
            text: 'Matches',
            textColor: Colors.black,
            textSize: 24,
            textWeight: FontWeight.bold,
          )
        ],
      );
    } else if (navigationMenuState.activeIndex == 4) {
      contentTitleHeader = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Name(
            text: 'Messages',
            textColor: titleColor ?? Colors.black,
            textSize: 24,
            textWeight: FontWeight.bold,
          )
        ],
      );
    }

    return AppBar(
      automaticallyImplyLeading: showLeading,
      leading: leadingWidget,
      title: contentTitleHeader,
      elevation: 0.0,
      backgroundColor: backgroundColor ?? Colors.white.withOpacity(0.0),
      actions: [contentHeader],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
