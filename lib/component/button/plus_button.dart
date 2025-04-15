import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({required this.plusIcon, super.key});
  final String plusIcon;

  @override
  Widget build(context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            plusIcon,
            width: 30,
            height: 30,
          ),
        ));
  }
}
