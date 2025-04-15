import 'package:flutter/material.dart';

class BottomModal extends StatelessWidget {
  final Widget child;
  const BottomModal({required this.child, super.key});

  @override
  Widget build(context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
