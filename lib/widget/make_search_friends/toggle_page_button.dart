import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/widget/text/name.dart';

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
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
