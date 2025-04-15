import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/header/header.dart';
import 'package:linqup_mobile_application/component/make_search_friends/make_and_search_button_wrapper.dart';
import 'package:linqup_mobile_application/component/make_search_friends/make_friends_page_content.dart';
import 'package:linqup_mobile_application/component/status_wrapper/status_container.dart';
import 'package:linqup_mobile_application/component/wrapper/wrapper_container.dart';
import 'package:linqup_mobile_application/page/search_partner/search_partner_page.dart';
import 'package:provider/provider.dart';
import 'package:linqup_mobile_application/store/state_manager/make_and_search_state.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() {
    return _MakeFriends();
  }
}

class _MakeFriends extends State<Homepage> {
  void makeFriendsHandler(toggleState) {
    toggleState.togglePage(true);
  }

  void searchPartnerHandler(toggleState) {
    toggleState.togglePage(false);
  }

  @override
  Widget build(context) {
    final toggleState = Provider.of<MakeAndSearchStateNav>(context);

    return WrapperContainer(
      header: const Header(
        showLeading: false,
      ),
      child: Column(
        children: [
          toggleState.isFirstButtonActive
              ? const Column(
                  children: [
                    Gap(height: 10),
                    StatusContainer(),
                  ],
                )
              : const SizedBox(),
          const Gap(height: 20),
          MakeFriendsAndSearchPartnerButtonWrapper(
              makeFriendsHandler: () => makeFriendsHandler(toggleState),
              searchPartnerHandler: () => searchPartnerHandler(toggleState)),
          const Gap(height: 10),
          toggleState.isFirstButtonActive
              ? const MakeFriendsPageContent()
              : const SearchPartnerPage(),
        ],
      ),
    );
  }
}
