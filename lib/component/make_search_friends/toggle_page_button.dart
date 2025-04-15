import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/component/text/name.dart';

class TogglePageButton extends StatelessWidget {
  const TogglePageButton(
      {required this.title,
      required this.bgColor,
      required this.toggleHandler,
      super.key});

  final void Function() toggleHandler;
  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: toggleHandler,
      style: FilledButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Name(
        text: title,
        textColor: Colors.deepPurple,
        textSize: 15,
        textWeight: FontWeight.w700,
      ),
    );
  }
}
