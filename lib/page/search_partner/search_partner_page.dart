import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/page/search_partner/partner_card.dart';
import 'package:linqup_mobile_application/page/search_partner/search_partner_controller.dart';

class SearchPartnerPage extends StatelessWidget {
  const SearchPartnerPage({super.key});

  @override
  Widget build(context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 90,
            left: 10.0,
            right: 10.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Column(
              children: [
                PartnerCard(),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
                  child: SearchPartnerController(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
