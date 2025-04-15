import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/card/card_content.dart';
import 'package:linqup_mobile_application/component/card/card_controller.dart';

class CardFriends extends StatefulWidget {
  final String bgImage;
  final String? cardButtonText;
  final String? cardButtonIcon;
  final String? contentText;
  final String? profileImage;
  final String? profileName;
  final String? profileState;

  const CardFriends(
      {required this.bgImage,
      this.cardButtonText,
      this.cardButtonIcon,
      this.contentText,
      this.profileImage,
      this.profileName,
      this.profileState,
      super.key});

  @override
  State<CardFriends> createState() {
    return _CardFriendsState();
  }
}

class _CardFriendsState extends State<CardFriends> {
  bool _isVisible = true;

  void toggleController() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            widget.bgImage,
            height: 350,
            width: 360,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 350,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Positioned(
          top: 10,
          bottom: 10,
          left: 10,
          child: CardContent(
            cardButtonText: widget.cardButtonText,
            cardButtonIcon: widget.cardButtonIcon,
            text: widget.contentText!,
            profilePath: widget.profileImage!,
            profileName: widget.profileName!,
            profileState: widget.profileState!,
          ),
        ),
        Positioned(
          top: 90,
          right: 0,
          child: AnimatedSlide(
            offset: _isVisible ? const Offset(0, 0) : const Offset(0.8, 0),
            duration: const Duration(milliseconds: 300),
            child: GestureDetector(
                onTap: toggleController, child: const CardController()),
          ),
        ),
      ],
    );
  }
}
