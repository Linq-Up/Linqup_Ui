import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/make_search_friends/toggle_page_button.dart';
import 'package:linqup_mobile_application/store/state_manager/make_and_search_state.dart';
import 'package:provider/provider.dart';

class MakeFriendsAndSearchPartnerButtonWrapper extends StatelessWidget {
  const MakeFriendsAndSearchPartnerButtonWrapper(
      {required this.makeFriendsHandler,
      required this.searchPartnerHandler,
      super.key});

  final void Function() makeFriendsHandler;
  final void Function() searchPartnerHandler;

  @override
  Widget build(context) {
    final toggleState = Provider.of<MakeAndSearchStateNav>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
            color: Colors.purpleAccent.withOpacity(0.1),
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TogglePageButton(
              title: 'Make Friends',
              bgColor: toggleState.isFirstButtonActive
                  ? Colors.white
                  : Colors.white.withOpacity(0.0),
              toggleHandler: makeFriendsHandler,
            ),
            TogglePageButton(
              title: 'Search Partners',
              bgColor: !toggleState.isFirstButtonActive
                  ? Colors.white
                  : Colors.white.withOpacity(0.0),
              toggleHandler: searchPartnerHandler,
            ),
          ],
        ),
      ),
    );
  }
}
