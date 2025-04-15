import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/gap/gap.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class CardProfile extends StatefulWidget {
  final String profile;
  final String? name;
  final String? state;
  const CardProfile({required this.profile, this.name, this.state, super.key});

  @override
  State<CardProfile> createState() {
    return _CardProfile();
  }
}

class _CardProfile extends State<CardProfile> {
  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            widget.profile,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(
              text: widget.name!,
              textColor: Colors.white,
              textSize: 15,
              textWeight: FontWeight.w600,
            ),
            Name(
              text: widget.state!,
              textColor: Colors.white,
              textSize: 15,
              textWeight: FontWeight.normal,
            ),
          ],
        )
      ],
    );
  }
}
